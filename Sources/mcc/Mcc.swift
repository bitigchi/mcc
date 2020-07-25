// Mcc.swift
// Author: Emir Sarı
// Copyright © 2019-2020 Emir Sarı. All rights reserved.
// See LICENSE for details

import ArgumentParser
import mccCore
import Foundation

struct Mcc: ParsableCommand {
    static let configuration: CommandConfiguration =
        .init(abstract: NSLocalizedString(
            "Simple text-to-morse converter", comment: "Program description"),
              version: "morse code converter, " + NSLocalizedString(
                    "version ", comment: "Version info") + "0.1.7")
    
    @Argument(help: ArgumentHelp(NSLocalizedString(
        "The text to convert",
        comment: "Argument help")))
    var text: String
    
    @Flag(name: .shortAndLong, help: ArgumentHelp(NSLocalizedString(
        "Copy output to clipboard (macOS only)",
        comment: "Argument help")))
    var copy = false
    
    @Flag(name: .shortAndLong, help: ArgumentHelp(NSLocalizedString(
        "Only display morse output",
        comment: "Argument help")))
    var morseOnly = false
    
    @Flag(name: .shortAndLong, help: ArgumentHelp(NSLocalizedString(
        "Strip whitespace from output",
        comment: "Argument help")))
    var whitespace = false
    
    func run() throws {
        let program = mccCore()
        let consoleIO = ConsoleIO()
        
        let result = program.executeProgramFunction(textToConvert: text,
                                       withoutSpace: whitespace,
                                       copy: copy,
                                       morseOnly: morseOnly)
        consoleIO.writeMessage(result)
    }
}
