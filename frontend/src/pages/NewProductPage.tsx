import React, { useState, useEffect } from 'react'
import { Navigation } from '../ui/Navigation'
import {
  Typography,
  TextField,
  Button,
  Select,
  MenuItem,
  FormControl,
  InputLabel,
  OutlinedInput,
} from '@material-ui/core'
import { Camera } from '../ui/Camera'
import { Product } from '../entities'

export const NewProductPage = (props: {
  path: string
  basket: Array<Product>
}) => {
  const [name, setName] = useState('')
  const [information, setInformation] = useState('')
  const [score, setScore] = useState(0)
  const [manufacturerId, setManufacturerId] = useState(0)
  const [img, setImg] = useState<string | null>(null)
  const [cameraActive, setCameraActive] = useState(false)

  const [manufacturers, setManufacturers] = useState([] as Array<{
    id: number
    name: string
  }>)

  useEffect(() => {
    const fn = async () => {
      const serverResponse = await fetch(
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
              query {
                manufacturers {
                  id
                  name
                }
              }
            `,
          }),
        }
      )

      setManufacturers((await serverResponse.json()).data.manufacturers)
    }

    fn()

    return () => {}
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
        <Typography variant="title">Add Product</Typography>
        <form
          style={{
            display: 'flex',
            flexDirection: 'column',
            flex: 1,
          }}
          onSubmit={async e => {
            e.preventDefault()
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
                  mutation($name: String!, $score: Int!, $manufacturerId: Int!, $img: String, $information: String!) {
                    addProduct(name: $name, score: $score, manufacturerid: $manufacturerId, img: $img, information: $information) {
                      id
                    }
                  }
                `,
                  variables: {
                    name,
                    score,
                    manufacturerId,
                    img,
                    information,
                  },
                }),
              }
            )
            const body = await response.json()
            if (body.data && body.data.addProduct) {
              window.location.href = `/product/${body.data.addProduct.id}`
            }
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
              multiline
              variant="outlined"
              label="Information"
              value={information}
              onChange={e => setInformation(e.target.value)}
              fullWidth
            />
            <br />
            <br />
            <TextField
              type="number"
              variant="outlined"
              label="Score"
              value={score || ''}
              onChange={e => setScore(+e.target.value)}
              fullWidth
            />
            <br />
            <br />
            <FormControl variant="outlined" fullWidth>
              <InputLabel htmlFor="Manufacturer">Manufacturer</InputLabel>
              <Select
                variant="outlined"
                id="Manufacturer"
                value={manufacturerId}
                onChange={e => setManufacturerId(+e.target.value)}
                input={
                  <OutlinedInput
                    labelWidth={100}
                    name="age"
                    id="outlined-age-simple"
                  />
                }
              >
                {manufacturers.map(manufacturer => (
                  <MenuItem value={manufacturer.id}>
                    {manufacturer.name}
                  </MenuItem>
                ))}
              </Select>
            </FormControl>
            <Camera
              active={cameraActive}
              onPhoto={photo => {
                setImg(photo)
                setCameraActive(false)
              }}
              onClose={() => setCameraActive(false)}
            />
            <Button onClick={() => setCameraActive(true)}>Take Picture</Button>
            {img && (
              <img
                src={img}
                style={{
                  maxWidth: '100%',
                  maxHeight: 300,
                  objectFit: 'contain',
                }}
              />
            )}
          </div>
          <Button type="submit" color="secondary" variant="raised">
            Create
          </Button>
        </form>
      </div>
      <Navigation basket={props.basket} />
    </div>
  )
}
