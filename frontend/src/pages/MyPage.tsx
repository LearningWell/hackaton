import React from 'react'
import { List, IconButton, Typography } from '@material-ui/core'
import ShoppingBasketIcon from '@material-ui/icons/ShoppingBasket'
import SentimentDissatisfiedIcon from '@material-ui/icons/SentimentDissatisfied'
import { Product, TreeIcon } from '../entities'
import { Navigation } from '../ui/Navigation'
import { ProductListItem } from '../ui/ProductListItem'

declare module '@material-ui/core/ListItem/ListItem' {
  interface ListItemProps {
    to?: string
  }
}

export const MyPage = (props: { path: string; basket: Array<Product> }) => {
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
          <div
            style={{
              display: 'flex',
              alignItems: 'center',
              justifyContent: 'center',
              flexDirection: 'column',
            }}
          >
            <SentimentDissatisfiedIcon
              style={{ fontSize: 92 }}
              color="disabled"
              fontSize="large"
            />
            <Typography variant="body1" style={{ maxWidth: '80%' }}>
              My page is not implemented in this demo
            </Typography>
          </div>
        </div>
      </div>
      <Navigation basket={props.basket} />
    </div>
  )
}
