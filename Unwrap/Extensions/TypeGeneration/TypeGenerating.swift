//
//  LetOrVar.swift
//  Unwrap
//
//  Created by Paul Hudson on 09/08/2018.
//  Copyright © 2018 Hacking with Swift.
//

import Foundation

protocol TypeGenerating {
    static func makeInstance() -> String
}

extension TypeGenerating {
    static func letOrVar() -> String {
        if arc4random_uniform(2) == 0 {
            return "var"
        } else {
            return "let"
        }
    }

    static func includeType() -> Bool {
        return Bool.random()
    }
}
