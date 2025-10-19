# Asterisk.el

Author: Raoul Comninos

Simple Emacs package for wrapping selected text with delimiters. Useful for Org mode and Markdown formatting.

## Installation

Add to your init file:

```elisp
(load-file "~/path/to/asterisk.el")
(require 'asterisk)
```

## Keybindings

| Key | Wraps with | Use case |
|-----|------------|----------|
| `M-8` | `*text*` | Org bold / Markdown italic |
| `M-*` | `**text**` | Markdown bold |
| `M-_` | `_text_` | Org/Markdown italic |
| `M-+` | `=text=` | Org verbatim |
| `M-?` | `/text/` | Org italic |
| `M-"` | `"text"` | Quotes |
| `M-~` | `~~text~~` | Markdown strikethrough |
| `M-'` | `` `text` `` | Markdown code |
| `M-1` | — | Jump out of pair |

**Markdown only:**
`C-c .` — Insert Org-style date (`# 2025-10-19 Sat`)

## Usage

Select text, press keybinding. That's it.

## License

Free to use and modify.

## Support

If you find this project helpful, consider supporting it!

[Donate via PayPal](https://www.paypal.com/paypalme/revrari)
