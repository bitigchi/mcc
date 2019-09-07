//
//  ArgumentParser+Add.swift
//  mcc
//
//  Created by Emir SARI on 2.09.2019.
//

import SPMUtility
import Basic

protocol Command {
    var command: String { get }
    var overview: String { get }
    
    init(parser: ArgumentParser)
    func run(with arguments: ArgumentParser.Result) throws
}
