#!/usr/bin/env python3
"""
This script takes a module name & creates it in the `modules` directory alongside 3 other files.
"""
import argparse
import os
import sys
from pathlib import Path

# List of files to create within the new module folder
MODULE_FILES = ["main.tf", "outputs.tf", "variables.tf"]

def create_module_structure(folder_name):
    # Determine the target directory (assume it should be in 'modules/' based on project structure)
    # If 'modules/' exists, put it there, otherwise use the current directory.
    base_dir = Path("modules")
    if base_dir.exists() and base_dir.is_dir():
        module_path = base_dir / folder_name
    else:
        module_path = Path(folder_name)

    try:
        # Create the folder
        module_path.mkdir(parents=True, exist_ok=False)
        print(f"Created directory: {module_path}")

        # Create the files
        for filename in MODULE_FILES:
            file_path = module_path / filename
            file_path.touch()
            print(f"Created file: {file_path}")
        
        print(f"\nSuccessfully created module structure for '{folder_name}' at {module_path}")

    except FileExistsError:
        print(f"Error: Directory '{module_path}' already exists.")
        sys.exit(1)
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        sys.exit(1)

def main():
    parser = argparse.ArgumentParser(description="Create a Terraform module structure with main.tf, outputs.tf, and variables.tf.")
    parser.add_argument("name", help="The name of the module/folder to create")
    
    args = parser.parse_args()
    create_module_structure(args.name)

if __name__ == "__main__":
    main()
