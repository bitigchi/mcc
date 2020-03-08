# mcc / Morse Code Converter

A basic text-to-morse converter for the command line, written in Swift.

Supports basic and extended morse codes and conversion from Latin texts.
![Screenshot](/.github/screenshot.png)

```
OVERVIEW: Simple text-to-morse converter

USAGE: mcc <text> [--copy] [--whitespace]

ARGUMENTS:
  <text>                  The text to convert 

OPTIONS:
  -c, --copy              Copy output to clipboard (macOS only) 
  -w, --whitespace        Strip whitespace from output 
  -h, --help              Show help information.
```

### Known Limitations
- You need to use terminal escape characters to display certain characters (", ! etc.)
- Clipboard is only usable on macOS for the moment

### Author:
Emir Sarı, bitigchi@me.com
