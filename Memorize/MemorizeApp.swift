//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Guillem Solé Cubilo on 17/2/21.
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
