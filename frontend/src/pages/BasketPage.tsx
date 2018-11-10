import React from 'react'
import { List, IconButton, Typography } from '@material-ui/core'
import ShoppingBasketIcon from '@material-ui/icons/ShoppingBasket'
import RemoveShoppingCartIcon from '@material-ui/icons/RemoveShoppingCart'
import { Product, TreeIcon } from '../entities'
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
        <div
          style={{
            display: 'flex',
            flexDirection: 'column',
            alignItems: props.basket.length > 0 ? '' : 'center',
            justifyContent: props.basket.length > 0 ? '' : 'center',
            flex: 1,
          }}
        >
          {props.basket.length > 0 ? (
            <>
              <div style={{ padding: 16, paddingTop: 24, paddingBottom: 8 }}>
                <Typography variant="h5">Din kundkorg</Typography>
                <div>
                  {Array.from({ length: 3 }).map((_, idx) => (
                    <TreeIcon key={idx} />
                  ))}
                  {Array.from({ length: 5 - 3 }).map((_, idx) => (
                    <TreeIcon key={idx} grey />
                  ))}
                </div>
              </div>

              <List style={{ width: '100%' }}>
                {props.basket.map((product, i) => (
                  <ProductListItem
                    key={i}
                    product={product}
                    divider={i < props.basket.length - 1}
                    actionButton={
                      <IconButton
                        onClick={() => props.removeFromBasket(product)}
                      >
                        <RemoveShoppingCartIcon />
                      </IconButton>
                    }
                  />
                ))}
              </List>
            </>
          ) : (
            <div
              style={{
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center',
                flexDirection: 'column',
              }}
            >
              <ShoppingBasketIcon
                style={{ fontSize: 92 }}
                color="disabled"
                fontSize="large"
              />
              <Typography variant="body1" style={{ maxWidth: '80%' }}>
                Add products to your shopping basket from the search page
              </Typography>
            </div>
          )}
        </div>
      </div>
      <Navigation />
    </div>
  )
}
