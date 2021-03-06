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
    <ListItemText
      primary={product.name}
      style={{ overflowWrap: 'break-word' }}
    />
    <Typography style={{ flexShrink: 0 }}>
      {Array.from({ length: Math.min(product.score, 5) }).map((_, idx) => (
        <TreeIcon key={idx} />
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
