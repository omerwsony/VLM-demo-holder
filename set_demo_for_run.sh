#!/bin/bash

# Step 0: enter /home/user
cd ~/

# Step 1: Check if ~/picamera2 exists
if [ ! -d "$HOME/picamera2" ]; then
    echo "Cloning picamera2 repo..."
    git clone https://github.com/raspberrypi/picamera2 "$HOME/picamera2"
else
    echo "picamera2 directory already exists."
fi

# Step 2: Change to examples/imx500 directory
cd "$HOME/picamera2/examples/imx500" || { echo "Directory not found: imx500"; exit 1; }

# Step 3: Check if vlm_demo directory exists
if [ ! -d "vlm_demo" ]; then
    echo "Creating vlm_demo directory..."
    mkdir vlm_demo
else
    echo "vlm_demo directory already exists."
fi

# Step 4: Change to vlm_demo directory
cd vlm_demo || { echo "Failed to enter vlm_demo directory"; exit 1; }

# Step 5: Check if yoloe_demo.py exists
if [ ! -f "yoloe_demo.py" ]; then
    echo "yoloe_demo.py not found. Downloading zip..."

    # Replace this URL with your actual zip file URL
    ZIP_URL="http://example.com/path/to/vlm_demo.zip"

    wget "$ZIP_URL" -O vlm_demo.zip || { echo "Failed to download zip file"; exit 1; }
    unzip vlm_demo.zip || { echo "Failed to unzip"; exit 1; }
else
    echo "yoloe_demo.py already exists."
fi

# Step 6: Print final instruction
echo "✅ Setup complete."
echo "👉 Run this command: python3 yoloe_demo.py"

