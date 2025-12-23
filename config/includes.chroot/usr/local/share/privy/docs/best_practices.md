# PrivyOS Best Practices

To get the most out of PrivyOS and its AI Assistant, follow these guidelines:

## 1. Use English for Better Accuracy
While the AI understands many languages, it was primarily trained on code and documentation in English. For complex technical tasks, English queries will yield the most reliable BASH commands.

## 2. Be Specific
Instead of saying "fix my network", try:
- "show my ip address"
- "list all wifi networks"
- "restart the magic-network service"

## 3. Creating Files & Scripts
If you want to generate code or a script, use keywords like **"write code"**, **"create script"**, or **"generate file"**. This triggers the 'Coder Mode', which focuses on generating 'cat << EOF' blocks.

## 4. Safety First
Always review the **AI Suggestion** before pressing 'Y'. The AI is running locally and has sudo access if you grant it. Verify that the command (especially 'rm' or 'mkfs') targets the correct files or partitions.

## 5. Use PrivyOS Tools
- Use `privy-status` to check system resources and AI health.
- Use `privypm <package>` to install new software and get an instant cheat-sheet.
- Use `history` to see your previous interactions.

## 6. Context Matters
The AI remembers the last 5 interactions. You can use follow-up questions:
- User: "find large files in /home"
- (After execution)
- User: "now delete the largest one"
