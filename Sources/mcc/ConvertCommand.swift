// ConvertCommand.swift
// Author: Emir Sarı
// See LICENSE for details

import SPMUtility
import Basic
import mccCore

struct ConvertCommand: Command {
    let command = "convert"
    let overview = "Converts the given text to morse code"
    
    let program = Program()
    let consoleIO = ConsoleIO()
    
    private let copy: OptionArgument<Bool>
    private let withoutSpace: OptionArgument<Bool>
    private let textToConvert: PositionalArgument<String>
    
    // Initializer for the command options
    
    init(parser: ArgumentParser) {
        let subparser = parser.add(subparser: command, overview: overview)

        copy = subparser.add(option: "--copy", shortName: "-c", kind: Bool.self, usage: "Copies output to clipboard")
        withoutSpace = subparser.add(option: "--withoutSpace", shortName: "-w", kind: Bool.self, usage: "Omits whitespace from result")
        
        textToConvert = subparser.add(positional: "textToConvert", kind: String.self, usage: "Text to convert to morse in double quotes")
    }
    
    // Method for running the conversion command
    public func run(with arguments: ArgumentParser.Result) throws {
        let copy = arguments.get(self.copy) ?? false
        let withoutSpace = arguments.get(self.withoutSpace) ?? false
        let textToConvert = arguments.get(self.textToConvert) ?? "Enter text to convert"
        
        let conversionResult = program.executeProgramFunction(textToConvert: textToConvert, withoutSpace: withoutSpace, copy: copy)
        consoleIO.writeMessage(conversionResult)
    }
}
