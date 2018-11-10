import React, { useState, useEffect } from 'react'
import { Navigation } from '../ui/Navigation'
import { Product, TreeIcon } from '../entities'
import { Typography, Button } from '@material-ui/core'
import { Link } from '@reach/router'

export const ProductPage = (props: {
  path: string
  productId?: number
  basket: Array<Product>
}) => {
  const [product, setProduct] = useState(null as Product | null)
  useEffect(() => {
    const fn = async () => {
      const response = await fetch(
        `//${
          window.location.hostname === 'localhost'
            ? 'localhost:4000'
            : window.location.hostname
        }/graphql?`,
        {
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
                  quantity
                  certification {
                    name
                    img
                  }
                }
              }
            `,
            variables: {
              id: +props.productId!,
            },
          }),
        }
      )
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
          overflow: 'auto',
        }}
      >
        {product && (
          <div style={{ display: 'flex', flexDirection: 'column', flex: 1 }}>
            <div style={{ textAlign: 'right' }}>
              <Button
                component={Link}
                to={'/'}
                style={{
                  border: '1px solid black',
                  width: '30px',
                  minWidth: '30px',
                  minHeight: '30px',
                  height: '30px',
                  fontSize: '15px',
                  padding: '0',
                }}
              >
                X
              </Button>
            </div>

            <Typography variant="title">{product.name}</Typography>
            <div>
              {Array.from({ length: Math.min(product.score, 5) }).map(
                (_, idx) => (
                  <TreeIcon key={idx} />
                )
              )}
              {Array.from({ length: 5 - Math.min(product.score, 5) }).map(
                (_, idx) => (
                  <TreeIcon key={idx} grey />
                )
              )}
            </div>
            <Typography variant="body2">{product.quantity}</Typography>
            <div>
              {product.certification.map(c => (
                <img
                  src={`/${c.img}`}
                  style={{
                    width: '40px',
                    height: '40px',
                    objectFit: 'contain',
                  }}
                />
              ))}
            </div>
            <Typography variant="body2">{product.information}</Typography>

            {product.img && (
              <img
                src={product.img}
                style={{ objectFit: 'contain', marginBottom: 16 }}
              />
            )}
          </div>
        )}
      </div>
      <Navigation basket={props.basket} />
    </div>
  )
}
