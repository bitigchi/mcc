// Mcc.swift
// Author: Emir Sarı
// Copyright © 2019-2020 Emir Sarı. All rights reserved.
// See LICENSE for details

import ArgumentParser
import mccCore
import Foundation

struct Mcc: ParsableCommand {
    static let configuration: CommandConfiguration =
        .init(abstract: NSLocalizedString("Simple text-to-morse converter",
                                          bundle: program.bundle ?? .module,
                                          comment: "Program description"),
              version: "morse code converter, " +
                NSLocalizedString("version ",
                                  bundle: program.bundle ?? .module,
                                  comment: "Version info") + "0.1.8")
    
    @Argument(help: ArgumentHelp(NSLocalizedString(
                                    "The text to convert.",
                                    bundle: program.bundle ?? .module,
                                    comment: "Argument help")))
    var text: String
    
    @Flag(name: .shortAndLong, help: ArgumentHelp(
            NSLocalizedString("Copy output to clipboard (macOS only).",
                              bundle: program.bundle ?? .module,
                              comment: "Argument help")))
    var copy = false
    
    @Flag(name: .shortAndLong, help: ArgumentHelp(
            NSLocalizedString("Only display morse output.",
                              bundle: program.bundle ?? .module,
                              comment: "Argument help")))
    var morseOnly = false
    
    @Flag(name: .shortAndLong, help: ArgumentHelp(
            NSLocalizedString("Strip whitespace from output.",
                              bundle: program.bundle ?? .module,
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

final class Program {
    let bundle = program.localizationBundle(
        forLanguage: Locale.current.languageCode ?? "en")

    func localizationBundle(forLanguage language: String) -> Bundle? {
         if let path = Bundle.module.path(forResource: language,
                                          ofType: "lproj") {
             return Bundle(path: path)
         } else {
             return nil
         }
     }
}
