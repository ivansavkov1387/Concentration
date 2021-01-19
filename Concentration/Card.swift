//
//  Card.swift
//  Concentration
//
//  Created by Иван on 11/18/20.
//

import Foundation

struct Card: Hashable {
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    static func ==(rhs: Card, lhs: Card) -> Bool {
        return rhs.identifier == lhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}

