import React, { useState } from 'react'
import { MuiThemeProvider, createMuiTheme } from '@material-ui/core'
import { Router } from '@reach/router'
import { SearchPage } from './pages/SearchPage'
import { ProductPage } from './pages/ProductPage'
import { Product, secondary, primary } from './entities'
import { BasketPage } from './pages/BasketPage'
import { NewProductPage } from './pages/NewProductPage'

const theme = createMuiTheme({
  palette: {
    primary: { main: primary },
    secondary: { main: secondary }
  },
  typography: {
    useNextVariants: true
  }
})

export const App = () => {
  const [basket, setBasket] = useState([] as Array<Product>)

  return (
    <MuiThemeProvider theme={theme}>
      <div style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
        <Router style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
          <SearchPage
            path="/"
            addToBasket={product => setBasket([...basket, product])}
          />
          <BasketPage
            path="/basket"
            basket={basket}
            removeFromBasket={product =>
              setBasket(basket.filter(p => p !== product))
            }
          />
          <ProductPage path="/product/:productId" />
          <NewProductPage path="/new-product" />
        </Router>
      </div>
    </MuiThemeProvider>
  )
}
