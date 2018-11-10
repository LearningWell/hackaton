import React from 'react'
import { BottomNavigation, BottomNavigationAction } from '@material-ui/core'
import SearchIcon from '@material-ui/icons/Search'
import ShoppingBasketIcon from '@material-ui/icons/ShoppingBasket'
import PeopleIcon from '@material-ui/icons/People'
import { Link } from '@reach/router'

declare module '@material-ui/core/BottomNavigationAction/BottomNavigationAction' {
  interface BottomNavigationActionProps {
    to?: string
  }
}

export const Navigation = () => (
  <BottomNavigation
    color="primary"
    style={{
      backgroundColor: '#f9a825',
      zIndex: 1,
      position: 'fixed',
      bottom: 0,
      left: 0,
      right: 0,
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
      icon={<ShoppingBasketIcon />}
    />
    <BottomNavigationAction component={Link} to="/" icon={<PeopleIcon />} />
  </BottomNavigation>
)
