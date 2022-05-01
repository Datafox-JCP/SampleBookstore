//
//  MainView.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 28/04/22.
//

import SwiftUI

struct MainView: View {
    
    let books = [
    Book(title: "El pequeño libro de la astucia", author: "Lucas Bracco", price: "$180.00", image: "astucia"),
    Book(title: "Caleidoscopio Existencial", author: "Lucas Bracco", price: "$180.00", image: "existencial"),
    Book(title: "El pequeño libro de la astucia", author: "Lucas Bracco", price: "$180.00", image: "peligro"),
    Book(title: "Roma soy yo", author: "Lucas Bracco", price: "$180.00", image: "roma")
    ]
    
    var body: some View {
        NavigationView {
            
            List(books) { book in
                NavigationLink(destination: DetailView()) {
                    ItemView(book: book)
                }
            }
            .navigationTitle("Book List")
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
