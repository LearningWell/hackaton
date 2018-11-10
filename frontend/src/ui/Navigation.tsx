import React from 'react'
import {
  BottomNavigation,
  BottomNavigationAction,
  Badge,
} from '@material-ui/core'
import SearchIcon from '@material-ui/icons/Search'
import ShoppingBasketIcon from '@material-ui/icons/ShoppingBasket'
import PeopleIcon from '@material-ui/icons/People'
import { Link } from '@reach/router'
import { Product } from '../entities'

declare module '@material-ui/core/BottomNavigationAction/BottomNavigationAction' {
  interface BottomNavigationActionProps {
    to?: string
  }
}

export const Navigation = (props: { basket: Array<Product> }) => (
  <>
    <div style={{ height: 56 }} />
    <BottomNavigation
      color="primary"
      style={{
        backgroundColor: '#f9a825',
        zIndex: 1,
        position: 'fixed',
        left: 0,
        right: 0,
        bottom: 0,
      }}
    >
      <BottomNavigationAction
        component={Link}
        to="/"
        selected
        icon={<SearchIcon />}
      />
      <BottomNavigationAction
        component={Link}
        to="/basket"
        icon={
          props.basket.length > 0 ? (
            <Badge badgeContent={props.basket.length} color="secondary">
              <ShoppingBasketIcon />
            </Badge>
          ) : (
            <ShoppingBasketIcon />
          )
        }
      />
      <BottomNavigationAction
        component={Link}
        to="/my-page"
        icon={<PeopleIcon />}
      />
    </BottomNavigation>
  </>
)
