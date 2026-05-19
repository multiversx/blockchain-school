# Tooling Setup

Install **Rust**, **sc-meta**, and **mxpy** to follow along with the course exercises.

---

## VS Code (recommended)

We recommend using **Visual Studio Code** as your editor. It is not required, but it integrates well with Rust and the MultiversX toolchain.

- Download: https://code.visualstudio.com/

**Recommended extensions:**

| Extension | Purpose |
|---|---|
| `rust-analyzer` | Rust language support (autocomplete, errors, go-to-definition) |
| `Even Better TOML` | Syntax highlighting for `Cargo.toml` |
| `CodeLLDB` | Rust debugger |

Install extensions via **Ctrl+Shift+X** (or **Cmd+Shift+X** on macOS) and search by name.

---

## macOS

### Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Choose: Proceed with installation (default)
rustup update
rustup default stable
```

### sc-meta

```bash
cargo install multiversx-sc-meta --locked
sc-meta install all
```

### mxpy

```bash
brew install pipx
pipx ensurepath
pipx install mxpy
mxpy --version
```

---

## Windows

### Option A — Native PowerShell (recommended for most students)

Run the provided script in PowerShell **as Administrator**:

```powershell
# Allow local scripts to run (one-time)
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Run the setup script
.\setup-windows.ps1
```

The script installs Rust, sc-meta, and mxpy automatically.
Restart your terminal after it completes.

### Option B — WSL (Windows Subsystem for Linux)

If you prefer a Linux-like environment, install WSL first:
https://learn.microsoft.com/en-us/windows/wsl/install

Then follow the **Ubuntu** instructions below inside your WSL terminal.

---

## Ubuntu

### System dependencies

```bash
sudo apt-get install build-essential pkg-config libssl-dev
```

### Rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Choose: Proceed with installation (default)
rustup update
rustup default stable
```

### sc-meta

```bash
cargo install multiversx-sc-meta --locked
sc-meta install all
```

### mxpy

```bash
sudo apt install python3-pip pipx
pipx ensurepath
pipx install mxpy
mxpy --version
```
