//
//  Book.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 28/04/22.
//

import Foundation

struct Book: Identifiable {
    let id = UUID()
    var title: String
    var author: String
    var price: String
    var image: String
}
