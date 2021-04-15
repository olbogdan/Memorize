//
//  MemorizeApp.swift
//  Memorize
//
//  Created by bogdanov on 13.04.21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: EmojiMemoryGame())
        }
    }
}
