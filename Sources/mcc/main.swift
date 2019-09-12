// main.swift
// Author: Emir Sarı
// See LICENSE for details

import Foundation

var registry = CommandRegistry(usage: "\n<subcommand> <option> <\"text in brackets\">\n<subcommand> <option> --help",
                               overview: "Morse Code Converter")
registry.register(command: ConvertCommand.self)
registry.run()
