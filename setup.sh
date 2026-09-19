#!/usr/bin/env bash

# Ensure uv is installed. If missing, install it automatically.
if ! command -v uv &>/dev/null; then
    echo "uv not found, installing via official installer..."
    # Install uv using the recommended script (works on Unix-like shells).
    curl -LsSf https://astral.sh/uv/install.sh | sh
    # After installation, ensure the binary is now in PATH.
    if ! command -v uv &>/dev/null; then
        echo "Failed to install uv. Please install it manually from https://github.com/astral-sh/uv"
        exit 1
    fi
fi

# Create a virtual environment and install dependencies defined in pyproject.toml
uv sync

echo "Environment ready. To run the Spark example, execute:"
echo "    uv run python run_spark.py"
