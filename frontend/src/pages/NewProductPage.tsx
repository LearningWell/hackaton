import React, { useState } from 'react'
import { Navigation } from '../ui/Navigation'
import { Typography, TextField, Button } from '@material-ui/core'

export const NewProductPage = (props: { path: string }) => {
  const [name, setName] = useState('')
  const [score, setScore] = useState('')

  return (
    <div style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
      <div
        style={{
          display: 'flex',
          flexDirection: 'column',
          flex: 1,
          padding: 16
        }}
      >
        <Typography variant="title">Add Product</Typography>
        <form
          style={{ display: 'flex', flexDirection: 'column', flex: 1 }}
          onSubmit={async e => {
            e.preventDefault()
            const response = await fetch('http://localhost:4000/graphql?', {
              method: 'POST',
              headers: {
                'Content-Type': 'application/json'
              },
              body: JSON.stringify({
                query: `
                  mutation($product: ProductInput!) {
                    createProduct(product: $product) {
                      id
                    }
                  }
                `,
                variables: {
                  product: {
                    name
                  }
                }
              })
            })
          }}
        >
          <div style={{ padding: '16px 0', flex: 1 }}>
            <TextField
              variant="outlined"
              label="Name"
              value={name}
              onChange={e => setName(e.target.value)}
              fullWidth
            />
            <br />
            <br />
            <TextField
              type="number"
              variant="outlined"
              label="Score"
              value={score}
              onChange={e => setScore(e.target.value)}
              fullWidth
            />
          </div>
          <Button type="submit" color="secondary" variant="raised">
            Create
          </Button>
        </form>
      </div>
      <Navigation />
    </div>
  )
}
