import React from 'react'
import { List, IconButton } from '@material-ui/core'
import RemoveShoppingCartIcon from '@material-ui/icons/RemoveShoppingCart'
import { Product } from '../entities'
import { Navigation } from '../ui/Navigation'
import { ProductListItem } from '../ui/ProductListItem'

declare module '@material-ui/core/ListItem/ListItem' {
  interface ListItemProps {
    to?: string
  }
}

export const BasketPage = (props: {
  path: string
  basket: Array<Product>
  removeFromBasket: (product: Product) => void
}) => {
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
        }}
      >
        <div style={{ flex: 1 }}>
          <List>
            {props.basket.map((product, i) => (
              <ProductListItem
                key={i}
                product={product}
                divider={i < props.basket.length - 1}
                actionButton={
                  <IconButton onClick={() => props.removeFromBasket(product)}>
                    <RemoveShoppingCartIcon />
                  </IconButton>
                }
              />
            ))}
          </List>
        </div>
      </div>
      <Navigation />
    </div>
  )
}
