//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by bogdanov on 13.04.21.
//

import SwiftUI

func createCardContent(pairIndex: Int) -> String {
    return ""
}

class EmojiMemoryGame: ObservableObject {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()

    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = "🥶😱😨😰😥😓🤗🤔🤭🤫🤥😶😐😑😬🙄😯😦".map{String($0)}
        return MemoryGame<String>(numberOfPairsOfCards: 2) { pairIndex in emojis[pairIndex]
        }
    }

    // MARK: - Access to the model

    var cards: [MemoryGame<String>.Card] {
        model.cards
    }

    // MARK: - Intents(s)

    func choose(card: MemoryGame<String>.Card) {
        objectWillChange.send()
        model.choose(card: card)
    }
}
