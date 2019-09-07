// main.swift
// Author: Emir Sarı
// See LICENSE for details

import Foundation

var registry = CommandRegistry(usage: "<command> <options> <\"text in brackets\">\nExample: mcc convert -c \"text_to_convert\"\n\n-c, --copy: Copies output to clipboard\n-w, --withoutSpace: Removes whitespace from the result",
                               overview: "Morse Code Converter")
registry.register(command: ConvertCommand.self)
registry.run()
