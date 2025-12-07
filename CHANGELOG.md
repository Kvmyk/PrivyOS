# Changelog

All notable changes to PrivyOS will be documented in this file.

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
