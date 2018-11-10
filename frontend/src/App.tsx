import React, { useState } from 'react'
import { MuiThemeProvider, createMuiTheme } from '@material-ui/core'
import { Router } from '@reach/router'
import { SearchPage } from './pages/SearchPage'
import { ProductPage } from './pages/ProductPage'
import { Product, secondary, primary } from './entities'
import { BasketPage } from './pages/BasketPage'
import { NewProductPage } from './pages/NewProductPage'
import { MyPage } from './pages/MyPage'

const theme = createMuiTheme({
  palette: {
    primary: { main: primary },
    secondary: { main: secondary },
  },
  typography: {
    useNextVariants: true,
  },
})

export const App = () => {
  const [basket, setBasket] = useState([] as Array<Product>)
  const [query, setQuery] = useState('')
  return (
    <MuiThemeProvider theme={theme}>
      <div style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
        <Router style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
          <SearchPage
            path="/"
            basket={basket}
            query={query}
            setQuery={setQuery}
            addToBasket={product => setBasket([...basket, product])}
          />
          <BasketPage
            path="/basket"
            basket={basket}
            removeFromBasket={product =>
              setBasket(basket.filter(p => p !== product))
            }
          />
          <ProductPage path="/product/:productId" basket={basket} />
          <NewProductPage path="/new-product" basket={basket} />
          <MyPage path="/my-page" basket={basket} />
        </Router>
      </div>
    </MuiThemeProvider>
  )
}
