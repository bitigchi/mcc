//
//  main.swift
//  Morse Code Converter
//
//  Created by Emir SARI on 28.08.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import Foundation

var registry = CommandRegistry(usage: "<command> <options> <\"text in brackets\">\nExample: mcc convert -c \"text_to_convert\"\n\n-c, --copy: Copies output to clipboard\n-w, --withoutSpace: Removes whitespace from the result",
                               overview: "Morse Code Converter")
registry.register(command: ConvertCommand.self)
registry.run()
