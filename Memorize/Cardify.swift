//
//  Cardify.swift
//  Memorize
//
//  Created by bogdanov on 19.04.21.
//

import SwiftUI

struct Cardify: AnimatableModifier {
    var animatableData: Double {
        get { return rotation }
        set { rotation = newValue }
    }

    var rotation: Double
    var isFaceUp: Bool {
        rotation < 90
    }

    init(isFaceUp: Bool) {
        rotation = isFaceUp ? 0 : 180
    }

    func body(content: Content) -> some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius).fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius).stroke(lineWidth: edgeLineWidth)
                content
            } else {
                RoundedRectangle(cornerRadius: cornerRadius).fill()
            }
        }
        .rotation3DEffect(Angle.degrees(rotation), axis: (0, 1, 0))
    }

    private let cornerRadius: CGFloat = 10
    private let edgeLineWidth: CGFloat = 3
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        modifier(Cardify(isFaceUp: isFaceUp))
    }
}
