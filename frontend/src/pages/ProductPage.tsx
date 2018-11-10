import React, { useState, useEffect } from 'react'
import { Navigation } from '../ui/Navigation'
import { Product, TreeIcon } from '../entities'
import { Typography } from '@material-ui/core'

export const ProductPage = (props: { path: string; productId?: number }) => {
  const [product, setProduct] = useState(null as Product | null)
  useEffect(() => {
    const fn = async () => {
      const response = await fetch('http://localhost:4000/graphql?', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          query: `
              query($id: Int!) {
                product(id: $id) {
                  id
                  img
                  name
                  information
                  score
                }
              }
            `,
          variables: {
            id: +props.productId!,
          },
        }),
      })
      setProduct((await response.json()).data.product)
    }

    fn()
  }, [])

  return (
    <div style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
      <div
        style={{
          display: 'flex',
          flexDirection: 'column',
          flex: 1,
          padding: 16,
        }}
      >
        {product && (
          <div style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
            <Typography variant="title">{product.name}</Typography>
            <div>
              {Array.from({ length: Math.min(product.score, 5) }).map(() => (
                <TreeIcon />
              ))}
              {Array.from({ length: 5 - Math.min(product.score, 5) }).map(
                () => (
                  <TreeIcon grey />
                )
              )}
            </div>
            <Typography variant="body2">{product.information}</Typography>
            <img src={product.img} />
          </div>
        )}
      </div>
      <Navigation />
    </div>
  )
}
