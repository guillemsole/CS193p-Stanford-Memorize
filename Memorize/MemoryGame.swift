//
//  MemoryGame.swift
//  Memorize
//
//  Created by Guillem Solé Cubilo on 17/2/21.
//

import Foundation

struct MemoryGame<CardContent> {
    // What does this model do vars and functions in place
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("Card chosen:  \(card)")
    }
    
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
        
    }
    
    struct Card: Identifiable { // MemoryGame.Card
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
