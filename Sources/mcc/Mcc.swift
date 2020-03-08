// Mcc.swift
// Author: Emir Sarı
// Copyright © 2019-2020 Emir Sarı. All rights reserved.
// See LICENSE for details

import ArgumentParser
import mccCore

struct Mcc: ParsableCommand {
    
    static let configuration: CommandConfiguration =
        .init(abstract: "Simple text-to-morse converter")
    
    @Argument(help: "The text to convert")
    var text: String
    
    @Flag(name: .shortAndLong, help: "Copy output to clipboard (macOS only)")
    var copy: Bool
    
    @Flag(name: .shortAndLong, help: "Only display morse output")
    var morseOnly: Bool
    
    @Flag(name: .shortAndLong, help: "Strip whitespace from output")
    var whitespace: Bool
    
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
