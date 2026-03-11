#!/usr/bin/env python3
"""
Run terraform fmt and terraform validate from the project root.
"""
import os
import subprocess
import sys
from pathlib import Path


def get_project_root() -> Path:
    """Resolve project root (parent of scripts/ or directory containing environments/)."""
    script_dir = Path(__file__).resolve().parent
    root = script_dir.parent
    if (root / "environments").exists():
        return root
    # Fallback: assume we're in scripts/ under project root
    return root


def run_cmd(cmd: list[str], cwd: Path) -> bool:
    """Run a command and return True on success, False on failure."""
    result = subprocess.run(cmd, cwd=cwd)
    return result.returncode == 0


def main() -> int:
    root = get_project_root()
    os.chdir(root)

    print(f"Project root: {root}\n")

    # terraform fmt -recursive
    print("Running: terraform fmt -recursive")
    if not run_cmd(["terraform", "fmt", "-recursive"], root):
        print("terraform fmt failed")
        return 1

    # terraform validate in each environment
    env_dir = root / "environments"
    if not env_dir.exists():
        print("No environments/ directory found")
        return 1

    envs = sorted(d for d in env_dir.iterdir() if d.is_dir())
    if not envs:
        print("No environment directories found under environments/")
        return 1

    for env_path in envs:
        print(f"\nRunning: terraform validate (in {env_path.relative_to(root)})")
        if not run_cmd(["terraform", "validate"], env_path):
            print(f"terraform validate failed in {env_path}")
            return 1

    print("\nAll checks passed.")
    return 0


if __name__ == "__main__":
    sys.exit(main())
