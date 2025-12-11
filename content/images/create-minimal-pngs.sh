#!/bin/bash

# Create a minimal 1x1 gray PNG file (base64 encoded)
# This is a valid 1x1 pixel gray PNG
echo "iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mN89erVfwAI+wPH3j2qoQAAAABJRU5ErkJggg==" | base64 -d > template.png

# List all .jpg files and convert them
for file in *.jpg; do
  if [ -f "$file" ]; then
    cp template.png "$file"
    echo "Created $file"
  fi
done

# Clean up template
rm template.png

echo "Done creating minimal PNG files"
