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
                    .shadow(color: .gray, radius: 10, x: 1, y: 1)
                    .frame(width: 60, height: 90)
                
                VStack(alignment: .leading) {
                    Text(book.title)
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(.top, 2)
                        
                    Text(book.author)
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    Text(book.price)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .padding(.top, 3)
                    
                }
                .padding(.leading, 2)
            }
            Spacer()
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(book: .init(title: "Sample", author: "Author", price: "$100.00", image: "existencial"))
    }
}
