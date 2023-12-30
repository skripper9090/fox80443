#!/bin/sh

# Start a virtual X server
Xvfb :99 -screen 0 1024x768x24 &

# Set the DISPLAY environment variable
export DISPLAY=:99

# Start Firefox and keep it running in the foreground
firefox --no-remote &

# Wait for Firefox to exit (optional)
wait
