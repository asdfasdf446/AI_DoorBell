#!/bin/bash

# Define the root directory of the repository as the main directory
# Use `dirname` and `realpath` to get the absolute path of the main directory
MAIN_DIR=$(realpath "$(dirname "$0")/..")

# Define a command called `cdr` to quickly jump to the main directory
cdr() {
    cd "$MAIN_DIR" || exit
    echo "Jumped to repository root: $MAIN_DIR"
}

