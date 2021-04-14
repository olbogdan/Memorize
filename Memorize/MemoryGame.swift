//
//  MemoryGame.swift
//  Memorize
//
//  Created by bogdanov on 13.04.21.
//

import Foundation

struct MemoryGame<CardContent> {
    private(set) var cards: [Card]

    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = [Card]()
        for pairIndex in 0 ..< numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(
                Card(
                    id: pairIndex*2,
                    content: content
                )
            )
            cards.append(
                Card(
                    id: pairIndex*2 + 1,
                    content: content
                )
            )
        }
    }

    func choose(card: Card) {
        print("card  chosen: \(card)")
    }

    struct Card: Identifiable {
        var id: Int
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
    }
}