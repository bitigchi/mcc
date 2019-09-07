//
//  ConsoleIO.swift
//  Morse Code Converter
//
//  Created by Emir SARI on 28.08.2019.
//  Copyright © 2019 Emir SARI. All rights reserved.
//

import Foundation

enum OutputType {
    case error
    case standard
}

class ConsoleIO {
    func writeMessage(_ message: String, to: OutputType = .standard) {
        switch to {
        case .standard:
            print("\u{001B}[;m\(message)")
        case .error:
            fputs("\u{001B}[0;31m\(message)\n", stderr)
        }
    }
}
