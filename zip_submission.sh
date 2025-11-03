#!/bin/bash

# Remove old zip if exists
rm -f submission.zip

# Create a new zip archive
zip -r submission.zip submission

echo "Created submission.zip successfully."
