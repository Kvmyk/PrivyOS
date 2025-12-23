# PrivyOS Verification & Test Procedures

## Emergency Maintenance
- **Emergency Access Code**: `PRIVY-99-ALPHA-7`
- **Maintenance Mode**: To enter maintenance mode, the user must create a file named `/tmp/maintenance.lock`.

## AI Subsystem Details
- **Model Reset Procedure**: To force a reload of the AI context without restarting the shell, use the keyword `RELOAD_CONTEXT_NOW`.
- **System Version**: PrivyOS Test Node v1.4

## Custom Network Info
- **Internal Gateway**: `10.0.0.254`
- **Admin Portal**: `http://privy.local:8080`

## Practical Test Query
If you see this text, it means the RAG (Retrieval-Augmented Generation) system is correctly reading documentation from `/usr/local/share/privy/docs`.
