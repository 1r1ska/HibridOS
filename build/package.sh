#!/bin/bash

# HybridOS build script
# Prepare HybridOS release package for OpenComputers

# Exit on error
set -e

# Variables
SRC_DIR=$(pwd)
RELEASE_DIR="$SRC_DIR/release/HybridOS"
ARCHIVE_NAME="HybridOS.zip"

# Clean previous release
rm -rf "$RELEASE_DIR"
mkdir -p "$RELEASE_DIR"

# Copy directories
echo "[HybridOS] Copying files..."
cp -r bootloader core automation drivers modules gui libs scripts "$RELEASE_DIR"
cp LICENSE-MIT LICENSE-APACHE docs/* "$RELEASE_DIR" || true

# Optionally create archive
echo "[HybridOS] Creating zip archive..."
cd "$SRC_DIR/release"
zip -r "$ARCHIVE_NAME" "HybridOS"

echo "[HybridOS] Build complete. Archive: release/$ARCHIVE_NAME"
