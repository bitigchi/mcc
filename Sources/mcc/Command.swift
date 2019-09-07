// Command.swift
// Author: Emir Sarı
// See LICENSE for details

import SPMUtility
import Basic

protocol Command {
    var command: String { get }
    var overview: String { get }
    
    init(parser: ArgumentParser)
    func run(with arguments: ArgumentParser.Result) throws
}
