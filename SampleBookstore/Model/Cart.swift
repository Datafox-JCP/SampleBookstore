//
//  Cart.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 02/05/22.
//

import Foundation

struct CartItems: Identifiable {
    var id: String
    var item: Book
    var unit: Int
}

class Cart: ObservableObject {
    var items: [CartItems]
    var numberOfItems: Int
    var total: Double
    
    init(items: [CartItems], numberOfItems: Int, total: Double) {
        self.numberOfItems = numberOfItems
        self.items = items
        self.total = total
    }
    
    func totalToDouble() -> String {
        return String(format: "%.2f", total)
    }
}
