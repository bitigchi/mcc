// main.swift
// Author: Emir Sarı
// See LICENSE for details

import Foundation

var registry = CommandRegistry(usage: "\n<command> <option> <\"text in brackets\">\n<command> <option> --help",
                               overview: "Morse Code Converter")
registry.register(command: ConvertCommand.self)
registry.run()
