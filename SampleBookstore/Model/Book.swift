//
//  Book.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 28/04/22.
//

import Foundation

struct Book: Hashable, Identifiable {
    var id: Int
    var bookName: String
    var author: String
    var price: Double
    var image: String
    
    func priceToDouble() -> String {
        return String(format: "%.2f", price)
    }
}

enum Genre: String {
    case fantasy = "Fantasy"
    case action = "Action"
    case history = "History"
    case present = "Present"
    case drama = "Drama"
    case scienceFiction = "Sci-Fi"
    case economics = "Economics"
    case business = "Business"
}

struct BookDetail: Identifiable {
    var id: String
    var bookId: Int
    var author, title: String
    var price: Double
    var genre: [Genre]
    var kind, description, image : String
    var isAvailable: Bool
    
    func priceToDouble() -> String {
        return String(format: "%.2f", price)
    }
}

