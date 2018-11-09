import React, { useState } from 'react'
import {
  TextField,
  IconButton,
  List,
  ListItem,
  ListItemText,
  Button,
  Typography,
  BottomNavigation,
  BottomNavigationAction,
  MuiThemeProvider,
  createMuiTheme
} from '@material-ui/core'
import AddIcon from '@material-ui/icons/Add'
import SearchIcon from '@material-ui/icons/Search'
import ShoppingBasketIcon from '@material-ui/icons/ShoppingBasket'
import PeopleIcon from '@material-ui/icons/People'
import GradeIcon from '@material-ui/icons/Grade'

const theme = createMuiTheme({
  palette: {
    primary: { main: '#f9a825' },
    secondary: { main: '#d84315' }
  }
})

type Product = {
  name: string
  score: number
}

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
        <GradeIcon color="primary" />
      ))}
    </Typography>
  </ListItem>
)

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
              this.setState({
                products: ((await response.json()).data.searchProducts as Array<
                  Product
                >).sort((a, b) => b.score - a.score)
              })
            }}
          />
          <div style={{ flex: 1 }}>
            {this.state.products && (
              <List>
                {this.state.products.map((product, i, products) => (
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
          <BottomNavigation
            color="primary"
            style={{ backgroundColor: '#f9a825' }}
          >
            <BottomNavigationAction selected icon={<SearchIcon />} />
            <BottomNavigationAction icon={<ShoppingBasketIcon />} />
            <BottomNavigationAction icon={<PeopleIcon />} />
          </BottomNavigation>
        </div>
      </MuiThemeProvider>
    )
  }
}
