import React from 'react'
import { MuiThemeProvider, createMuiTheme } from '@material-ui/core'
import { Router } from '@reach/router'
import { SearchPage } from './pages/SearchPage'
import { ProductPage } from './pages/ProductPage'
import { Product, secondary, primary } from './entities'

const theme = createMuiTheme({
  palette: {
    primary: { main: primary },
    secondary: { main: secondary }
  },
  typography: {
    useNextVariants: true
  }
})

type State = {
  searchText: string
  products?: Array<Product>
}

export class App extends React.Component<{}, State> {
  state: State = { searchText: '' }

  render() {
    return (
      <MuiThemeProvider theme={theme}>
        <div style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
          <Router style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
            <SearchPage path="/" />
            <ProductPage path="/product" />
          </Router>
        </div>
      </MuiThemeProvider>
    )
  }
}
