import React, { useRef, useEffect } from 'react'
import {
  Dialog,
  AppBar,
  IconButton,
  Typography,
  Button,
} from '@material-ui/core'
import CloseIcon from '@material-ui/icons/Close'

export const Camera = (props: {
  active: boolean
  onClose: () => void
  onPhoto: (url: string) => void
}) => {
  const canvasRef = useRef<HTMLCanvasElement>(null)
  const videoRef = useRef<HTMLVideoElement>(null)
  const streamRef = useRef<MediaStream>(null)

  useEffect(
    () => {
      return () => {
        if (streamRef.current && streamRef.current.stop) {
          streamRef.current.stop()
        }
      }
    },
    [props.active]
  )

  const takePhoto = () => {
    const canvas = canvasRef.current!
    const ctx = canvas.getContext('2d')!
    ctx.drawImage(videoRef.current!, 0, 0, canvas.width, canvas.height)
    const dataURI = canvas.toDataURL('image/jpeg')
    props.onPhoto(dataURI)
  }

  return (
    <>
      <Dialog open={props.active} fullScreen>
        <AppBar>
          <div style={{ display: 'flex', alignItems: 'center' }}>
            <div>
              <IconButton onClick={props.onClose}>
                <CloseIcon />
              </IconButton>
            </div>
            <Typography
              variant="title"
              component="span"
              color="inherit"
              style={{ flex: 1 }}
            >
              Take photo
            </Typography>
            <div>
              <Button onClick={takePhoto}>Capture</Button>
            </div>
          </div>
        </AppBar>
        <canvas
          ref={canvasRef}
          style={{ display: 'none', width: 256, height: 256 }}
        />
        <video
          playsInline
          autoPlay
          style={{ width: '100%', height: '100%' }}
          ref={video => {
            ;(videoRef as any).current = video

            if (video) {
              navigator.mediaDevices
                .getUserMedia({
                  audio: false,
                  video: {
                    facingMode: 'environment',
                  },
                })
                .then(function success(stream) {
                  ;(streamRef as any).current = stream
                  if (videoRef.current) {
                    videoRef.current.srcObject = stream
                  }
                })
            }
          }}
        />
      </Dialog>
    </>
  )
}
