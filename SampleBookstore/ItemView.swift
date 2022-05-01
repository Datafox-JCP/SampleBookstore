//
//  ItemView.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 28/04/22.
//

import SwiftUI

struct ItemView: View {
    
    let book: Book
    
    var body: some View {
        VStack {
            HStack {
                Image(book.image)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: .gray, radius: 20, x: 1, y: 1)
                    .frame(width: 70, height: 120)
                
                VStack(alignment: .leading) {
                    Text(book.title)
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(.top, 2)
                        
                    Text(book.author)
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    Text(book.price)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.top, 4)
                    
                }
                .padding(.leading, 10)
            }
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(book: .init(title: "Caleidoscopio Existencial", author: "by: Juan Alamaza Pérez", price: "$190.00", image: "existencial"))
            .padding()
            .previewLayout(.fixed(width: 350.0, height: 150.0))
        }
}
