    # Function to display the loading animation
function show_loading_animation() {
    local -r chars="/-\|"
    while :; do
        for (( i=0; i<${#chars}; i++ )); do
            sleep 0.1
            echo -en "${chars:$i:1}" "\r"
        done
    done
}
URL="https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.13.3-stable.tar.xz"
DOWNLOAD_LOCATION="/tmp/flutter.tar.xz"
EXTRACTION_LOCATION="$HOME/Android"

function ai(){

# Create the extraction folder if it doesn't exist
mkdir -p "$EXTRACTION_LOCATION"

# Download the tar file with progress indicator
echo "Flutter Downloading..."
curl --progress-bar "$URL" --output "$DOWNLOAD_LOCATION" &

# Start the loading animation
show_loading_animation &

# Store the PID of the loading animation process
LOADING_ANIMATION_PID=$!

# Wait for the download to complete
wait

# Stop the loading animation process
kill "$LOADING_ANIMATION_PID"

# Extract the downloaded tar file
echo "Extracting..."
tar -xf "$DOWNLOAD_LOCATION" -C "$EXTRACTION_LOCATION"

# Cleanup: remove the downloaded tar file
rm "$DOWNLOAD_LOCATION"

echo "Flutter Setup complete."
}

echo "AI Is Running"
ai