# PrivyOS

> **Your Private, AI-Powered Terminal Operating System.**

PrivyOS is a custom Linux distribution based on **Debian 12 (Bookworm)**, engineered with a single goal: to deliver a powerful, local AI assistant directly into your terminal experience, with complete privacy respect.



## Key Features

*   **Embedded AI:** Powered by the **Ollama** engine running the `qwen2.5-coder:1.5b` model (optimized for code generation and low resource usage).
*   **Privy Shell:** A custom default shell that replaces standard Bash. It translates natural language requests into executable system commands.
*   **100% Offline & Private:** All AI computations happen locally on your CPU. No data leaves your machine.
*   **Live System:** Runs directly from a USB drive (Live ISO).
*   **Context Memory (v1.1):** The assistant remembers your recent command history, allowing for follow-up questions and corrections.

## How to Use

1.  **Download/Build** the ISO image.
2.  Burn it to a USB drive (using BalenaEtcher, Rufus, or `dd`).
3.  Boot your computer from the USB.
4.  Once the system loads, you will be greeted by the `PrivyOS` prompt. Just type what you want to do!

### Pro Tip
**For the best results and most accurate command generation, we highly recommend interacting with the shell in English.**

### Usage Examples:

```text
PrivyOS /home/user > show me my IP address
Suggestion: ip a
Execute? [Y/n]: y

PrivyOS /home/user > find all pdf files in this directory
Suggestion: find . -name "*.pdf"
Execute? [Y/n]: y

PrivyOS /home/user > create a new folder named 'project' and go into it
Suggestion: mkdir project && cd project
Execute? [Y/n]: y
```

## Building from Source

**Docker** is recommended for a consistent build environment. The process creates a Debian bootstrap and generates the final ISO.

1.  Clone the repository:
    ```bash
    git clone https://github.com/your-username/privyos-build.git
    cd privyos-build
    ```

2.  Run the build script:
    ```bash
    ./build.sh
    ```
    *The process may take 15-45 minutes depending on your internet connection and hardware.*

3.  The resulting file `live-image-amd64.hybrid.iso` will appear in the root directory.

## Project Structure

*   `config/` - Main `live-build` configuration.
    *   `hooks/` - Scripts executed during the build process (Ollama installation, shell configuration).
    *   `includes.chroot/` - Files copied directly into the OS filesystem (source code for `privy`).
    *   `package-lists/` - Lists of packages to be installed.
*   `build.sh` - Docker automated build script.

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for the version history.

## License

MIT License.