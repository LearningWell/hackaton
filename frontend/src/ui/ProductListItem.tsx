import { Product, TreeIcon } from '../entities'
import React, { ReactNode } from 'react'
import { ListItem, ListItemText, Typography } from '@material-ui/core'
import { Link } from '@reach/router'

export const ProductListItem = ({
  product,
  divider,
  actionButton,
}: {
  product: Product
  divider?: boolean
  actionButton?: ReactNode
}) => (
  <ListItem
    button
    component={Link}
    to={`/product/${product.id}`}
    divider={divider}
  >
    <ListItemText primary={product.name} />
    <Typography>
      {Array.from({ length: Math.min(product.score, 5) }).map(() => (
        <TreeIcon />
      ))}
    </Typography>
    {actionButton && (
      <div
        onMouseDown={e => e.stopPropagation()}
        onTouchStart={e => e.stopPropagation()}
        onClick={e => e.preventDefault()}
      >
        {actionButton}
      </div>
    )}
  </ListItem>
)
