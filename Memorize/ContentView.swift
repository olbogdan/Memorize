//
//  ContentView.swift
//  Memorize
//
//  Created by bogdanov on 13.04.21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack {
            ForEach(0 ..< 4) { _ in
                CardView(isFaceUp: true)
                    .padding()
                    .foregroundColor(Color.orange)
                    .font(.largeTitle)
            }
        }
    }
}

struct CardView: View {
    var isFaceUp: Bool

    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("b")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
