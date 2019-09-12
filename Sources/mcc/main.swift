// main.swift
// Author: Emir Sarı
// See LICENSE for details

import Foundation

var registry = CommandRegistry(usage: "\n<subcommand> <option> <\"text in brackets\">\n<subcommand> <option> --help\nTo convert double quotes, either use curly quotes or type plain double quotes with \\\nTo convert an exclamation mark, add \\ before it.", overview: "Morse Code Converter")
registry.register(command: ConvertCommand.self)
registry.run()
