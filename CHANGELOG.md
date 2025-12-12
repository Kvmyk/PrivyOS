# Changelog

All notable changes to PrivyOS will be documented in this file.

## [v1.2] - 2025-12-08

### Added
- **AI Code Generation (Router Mode):** `privy` shell now supports a "Coder Mode" that detects keywords (e.g., "write code", "napisz skrypt") and instructs the AI to generate BASH commands to create code files (`cat << 'EOF' > filename ... EOF`).
- **Enhanced UI with Rich:** Integrated the `python3-rich` library for a more polished and colorful terminal experience in `privy` shell.
- **Magic Network Configuration:** Implemented an automatic network setup script (`magic-network.sh`) and systemd service to improve out-of-the-box network connectivity on bare metal hardware.
- **Persistence Support:** Configured live-build to enable persistence, allowing users to save changes across reboots when booting from a persistent USB drive.
- **Debian Installer Option:** Added a dedicated Debian Installer option to the boot menu for permanent installation to a hard drive (both text and graphical modes).
- **Attempted AI Analysis Capabilities:** Began implementing functionality to allow the local AI model to read device information, analyze command outputs (e.g., `top`), and summarize file content.

### Changed
- **Ollama Optimization:**
    - Pre-downloaded the default AI model (`qwen2.5-coder:1.5b`) during the build process to a persistent location (`/usr/local/share/ollama/models`), ensuring offline readiness from first boot of the live system.
    - Added `zram-tools` and `mesa-vulkan-drivers` packages.
    - Configured CPU governor to `performance` using `cpufrequtils`.
- **Native Commands Expansion:** Added `python` and `python3` to the `NATIVE_COMMANDS` list in `privy` to prevent AI interception of these commands.
- **Build Process:** Updated Docker build script to properly incorporate new configurations.
- **Default Shell after Installation:** Implemented fixes to ensure the `privy` shell is set as the default shell for users created during installation via both Debian Installer (using preseed configuration) and Calamares (configuring `users.conf`).

### Fixed
- **Ollama Model Persistence:** Corrected an issue where the Ollama model was being re-downloaded on live system boot by ensuring it's installed to a persistent location during the build.
- **Privy Shell Not Default After Installation:** Resolved an issue where the `privy` shell was not set as the default for installed users; now configured via preseed and Calamares.

---

## [v1.1] - 2025-12-07

### Added
- **AI Code Generation (Router Mode):** `privy` shell now supports a "Coder Mode" that detects keywords (e.g., "write code", "napisz skrypt") and instructs the AI to generate BASH commands to create code files (`cat << 'EOF' > filename ... EOF`).
- **Enhanced UI with Rich:** Integrated the `python3-rich` library for a more polished and colorful terminal experience in `privy` shell.
- **Magic Network Configuration:** Implemented an automatic network setup script (`magic-network.sh`) and systemd service to improve out-of-the-box network connectivity on bare metal hardware.
- **Persistence Support:** Configured live-build to enable persistence, allowing users to save changes across reboots when booting from a persistent USB drive.
- **Debian Installer Option:** Added a dedicated Debian Installer option to the boot menu for permanent installation to a hard drive (both text and graphical modes).

### Changed
- **Ollama Optimization:**
    - Pre-downloaded the default AI model (`qwen2.5-coder:1.5b`) during the build process to a persistent location (`/usr/local/share/ollama/models`), ensuring offline readiness from first boot of the live system.
    - Added `zram-tools` and `mesa-vulkan-drivers` packages.
    - Configured CPU governor to `performance` using `cpufrequtils`.
- **Native Commands Expansion:** Added `python` and `python3` to the `NATIVE_COMMANDS` list in `privy` to prevent AI interception of these commands.
- **Build Process:** Updated Docker build script to properly incorporate new configurations.

### Fixed
- **Ollama Model Persistence:** Corrected an issue where the Ollama model was being re-downloaded on live system boot by ensuring it's installed to a persistent location during the build.

### Known Issues
- **Privy Shell Not Default After Installation:** After installing PrivyOS to disk via the Debian Installer, the `privy` shell does not automatically become the default shell for newly created users; it defaults to Bash. This needs to be resolved to maintain the core PrivyOS experience post-installation.

---

## [v1.1] - 2025-12-07

### Added
- **Context Memory:** The `privy` shell now remembers the last 3 commands and their outputs, allowing for follow-up questions (e.g., "fix it").
- **Native Commands:** Significantly expanded the list of commands executed directly by the shell (without AI) to include system utilities like `ip`, `nano`, `grep`, `cat`, etc.
- **Boot Enforcement:** Added a `live-config` script (`9999-privy-shell`) to strictly enforce `privy` as the default shell for the `user` account upon boot.
- **Multilingual Support:** Updated the system prompt to explicitly support both Polish and English inputs.
- **Markdown Cleaning:** The AI output is now automatically stripped of markdown code blocks (```bash) to ensure valid execution.

### Changed
- **Model:** Switched the default local model to `qwen2.5-coder:1.5b` for better performance and lower resource usage on Live ISO.
- **ASCII Art:** Updated the startup banner to a cleaner "Slant" font style for better readability.
- **System Prompt:** Refined the prompt to be more strict about raw output and safety.

### Fixed
- Fixed an issue where the standard Bash shell would load instead of `privy` at startup due to `live-boot` user creation timing.

---

## [v1.0] - 2025-12-06

### Added
- Basic build configuration for Debian Bookworm Live ISO.
- `privy` python wrapper integration with Ollama.
- Automatic installation of Ollama via build hooks.
- Model auto-pull on first run (`qwen2.5-coder:3b`).