//
//  ContentView.swift
//  Memorize
//
//  Created by bogdanov on 13.04.21.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame

    var body: some View {
        return HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
            }
        }.padding()
            .foregroundColor(Color.orange)
            .font(.largeTitle)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card

    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
