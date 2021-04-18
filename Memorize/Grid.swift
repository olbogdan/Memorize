//
//  Grid.swift
//  Memorize
//
//  Created by bogdanov on 16.04.21.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    private var items: [Item]
    private var viewForItem: (Item) -> ItemView

    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }

    var body: some View {
        GeometryReader { geometry in
            body(for: GridLayout(itemCount: items.count, in: geometry.size))
        }
    }

    private func body(for layout: GridLayout) -> some View {
        ForEach(items) { item in
            extractedFunc(for: item, in: layout)
        }
    }

    private func extractedFunc(for item: Item, in layout: GridLayout) -> some View {
        let index = self.index(of: item)
        return viewForItem(item).frame(width: layout.itemSize.width, height: layout.itemSize.height)
            .position(layout.location(ofItemAt: index))
    }

    private func index(of item: Item) -> Int {
        return items.firstIndex(where: {$0.id == item.id}) ?? 0
    }
}
