//
//  mccCore.swift
//  Basic
//
//  Created by Emir SARI on 2.09.2019.
//

import AppKit

public struct Program {
    
    public init() {}
    let converter = MorseCodeConverter()
    
    public func executeProgramFunction(textToConvert: String, withoutSpace: Bool, copy: Bool) -> String {
        let conversionResult = converter.convertToMorse(textToConvert: textToConvert, withoutSpace: withoutSpace)
        
        if copy {
            copyToClipboard(textToCopy: conversionResult)
        }
        print("\n\(textToConvert) in morse:")
        return conversionResult
    }
    
    func copyToClipboard(textToCopy: String) {
        let pasteBoard = NSPasteboard.general
        pasteBoard.clearContents()
        pasteBoard.setString(textToCopy, forType: .string)
        print("Result copied to clipboard!")
    }
}
