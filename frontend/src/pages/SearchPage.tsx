import React, { useState, useEffect } from 'react'
import { TextField, IconButton, List, Button } from '@material-ui/core'
import AddIcon from '@material-ui/icons/Add'
import SearchIcon from '@material-ui/icons/Search'
import AddShoppingCartIcon from '@material-ui/icons/AddShoppingCart'
import { Product } from '../entities'
import { Navigation } from '../ui/Navigation'
import { ProductListItem } from '../ui/ProductListItem'
import { Link } from '@reach/router'
import { CSSProperties } from 'jss/css'

declare module '@material-ui/core/Button/Button' {
  interface ButtonProps {
    to?: string
  }
}

declare module '@material-ui/core/ListItem/ListItem' {
  interface ListItemProps {
    to?: string
  }
}

const SearchField = (props: {
  onSearch: (query: string) => void
  query: string
  setQuery: (query: string) => void
  style?: CSSProperties
}) => {
  return (
    <form
      style={{
        display: 'flex',
        alignSelf: 'center',
        paddingTop: 16,
        flexShrink: 0,
        ...(props.style as any),
      }}
      onSubmit={e => {
        e.preventDefault()
        props.onSearch(props.query)
      }}
    >
      <TextField
        value={props.query}
        onChange={e => props.setQuery(e.target.value)}
        style={{ flex: 1 }}
        variant="outlined"
        label="Search Products"
      />
      <div>
        <IconButton type="submit">
          <SearchIcon />
        </IconButton>
      </div>
    </form>
  )
}

export const SearchPage = (props: {
  path: string
  addToBasket: (product: Product) => void
  basket: Array<Product>
  query: string
  setQuery: (query: string) => void
}) => {
  const [products, setProducts] = useState([] as Array<Product>)

  const searchProducts = async (query: string) => {
    const response = await fetch(
      `//${
        window.location.hostname === 'localhost'
          ? 'localhost:4000'
          : window.location.hostname
      }/graphql?`,
      {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          query: `
          query($query: String!) {
            searchProducts(name: $query) {
              id
              name
              score
            }
          }
        `,
          variables: {
            query: query,
          },
        }),
      }
    )
    setProducts(
      ((await response.json()).data.searchProducts as Array<Product>).sort(
        (a, b) => b.score - a.score
      )
    )
  }

  useEffect(() => {
    if (props.query) {
      searchProducts(props.query)
    }
  }, [])

  return (
    <div
      style={{
        display: 'flex',
        flexDirection: 'column',
        flex: 1,
        maxHeight: '100vh',
      }}
    >
      <div
        style={{
          display: 'flex',
          flexDirection: 'column',
          flex: 1,
          overflow: 'auto',
          justifyContent: products.length > 0 ? '' : 'center',
        }}
      >
        <SearchField
          query={props.query}
          setQuery={props.setQuery}
          onSearch={searchProducts}
          style={products ? {} : {}}
        />
        {products.length > 0 && (
          <div style={{ flex: 1 }}>
            <List>
              {products.map((product, i) => (
                <ProductListItem
                  key={i}
                  product={product}
                  divider={i < products.length - 1}
                  actionButton={
                    <IconButton onClick={() => props.addToBasket(product)}>
                      <AddShoppingCartIcon />
                    </IconButton>
                  }
                />
              ))}
            </List>
          </div>
        )}
        <div style={{ position: 'fixed', right: 16, bottom: 16 + 56 }}>
          <Button
            color="secondary"
            variant="fab"
            component={Link}
            to="/new-product"
          >
            <AddIcon />
          </Button>
        </div>
      </div>
      <Navigation basket={props.basket} />
    </div>
  )
}
