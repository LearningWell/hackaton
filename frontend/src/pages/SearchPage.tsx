import React, { useState } from 'react'
import {
  TextField,
  IconButton,
  ListItem,
  ListItemText,
  Typography,
  List,
  Button
} from '@material-ui/core'
import AddIcon from '@material-ui/icons/Add'
import SearchIcon from '@material-ui/icons/Search'
import { Product, TreeIcon } from '../entities'
import { Navigation } from '../ui/Navigation'

const SearchField = (props: { onSearch: (query: string) => void }) => {
  const [query, setQuery] = useState('')

  return (
    <form
      style={{ display: 'flex', alignSelf: 'center', paddingTop: 16 }}
      onSubmit={e => {
        e.preventDefault()
        props.onSearch(query)
      }}
    >
      <TextField
        value={query}
        onChange={e => setQuery(e.target.value)}
        style={{ flex: 1 }}
      />
      <div>
        <IconButton type="submit">
          <SearchIcon />
        </IconButton>
      </div>
    </form>
  )
}

const ProductListItem = ({
  product,
  divider
}: {
  product: Product
  divider?: boolean
}) => (
  <ListItem divider={divider}>
    <ListItemText primary={product.name} />
    <Typography>
      {Array.from({ length: product.score }).map(() => (
        <TreeIcon />
      ))}
    </Typography>
  </ListItem>
)

export const SearchPage = (props: { path: string }) => {
  const [products, setProducts] = useState([] as Array<Product>)

  return (
    <div style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
      <div style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
        <SearchField
          onSearch={async query => {
            const response = await fetch('http://localhost:4000/graphql?', {
              method: 'POST',
              headers: {
                'Content-Type': 'application/json'
              },
              body: JSON.stringify({
                query: `
                  query($query: String!) {
                    searchProducts(name: $query) {
                      name
                      score
                    }
                  }
                `,
                variables: {
                  query: query
                }
              })
            })
            setProducts(
              ((await response.json()).data.searchProducts as Array<
                Product
              >).sort((a, b) => b.score - a.score)
            )
          }}
        />
        <div style={{ flex: 1 }}>
          {products && (
            <List>
              {products.map((product, i) => (
                <ProductListItem
                  key={i}
                  product={product}
                  divider={i < products.length - 1}
                />
              ))}
            </List>
          )}
        </div>
        <div style={{ position: 'absolute', right: 16, bottom: 16 + 56 }}>
          <Button color="secondary" variant="fab">
            <AddIcon />
          </Button>
        </div>
      </div>
      <Navigation />
    </div>
  )
}
