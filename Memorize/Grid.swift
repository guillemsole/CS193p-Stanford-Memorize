//
//  Grid.swift
//  Memorize
//
//  Created by Guillem Solé Cubilo on 17/2/21.
//

import SwiftUI

struct Grid<Item, ItemView>: View where Item: Identifiable, ItemView: View {
    var items: [Item]
    var viewForItem: (Item) -> ItemView
    
    init(_ items: [Item], viewForItem: @escaping (Item) -> ItemView) {
        self.items = items
        self.viewForItem = viewForItem
    }

    var body: some View {
        GeometryReader { geometry in
            body(for: GridLayout(itemCount: items.count, in: geometry.size))
        }
    }
    
    func body(for layout: GridLayout) -> some View {
        ForEach(items) { item in
            body(for: item, in: layout)
        }
    }
    
    func body(for item: Item, in layout: GridLayout) -> some View {
        let index = self.index(of:item)
        print(index)
        return viewForItem(item)
            .frame(width: layout.itemSize.width, height: layout.itemSize.height)
            .position(layout.location(onItemAt: index))
    }
    
    func index(of item:Item) -> Int {
        for index in 0..<items.count {
            if items[index].id == item.id {
                return index
            }
        }
        return 0 // TODO:  bogus
    }
}
