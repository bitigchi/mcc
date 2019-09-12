# mcc / Morse Code Converter

A basic text-to-morse converter for the command line, written in Swift.

Supports basic and extended morse codes and conversion from Latin texts.

#### To use:

    $ mcc convert <option> <option> "text to convert"

### Options:
`-c, --copy`            Copies output to clipboard

`-w, --withoutSpace`    Removes whitespace from output code

### Install:

    $ git clone https://github.com/bitigchi/mcc.git
    $ cd mcc
    $ make

### Known Limitations
- To convert double quotes, either use curly quotes or type plain double quotes with `\"`
- To convert an exclamation mark, add a "\" before the exclamation mark

### Author:
Emir Sarı, bitigchi@me.com
