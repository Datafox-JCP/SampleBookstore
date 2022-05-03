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
                    Text(book.bookName)
                        .font(.body)
                        .fontWeight(.bold)
                        .padding(.top, 2)
                        
                    Text(book.author)
                        .font(.footnote)
                        .foregroundColor(.gray)
                    Text("$\(book.priceToDouble())")
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
        let bookService: MockBookService = MockBookService()
        let book = BookViewModel(mockBookService: bookService).mockBookService.books[0]
        ItemView(book: book)
        }
}
