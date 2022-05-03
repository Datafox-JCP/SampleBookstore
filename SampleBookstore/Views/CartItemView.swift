//
//  CartItemView.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 02/05/22.
//

import SwiftUI

struct CartItemView: View {
    
    var item: CartItems
    
    var body: some View {
        HStack() {
            Image(item.item.image)
                .resizable()
                .frame(width: 70, height: 110)
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .gray, radius: 10, x: 5, y: 5)
                .padding()
            
            VStack(alignment: .leading) {
                Text(item.item.bookName)
                Spacer().frame(height: 15)
                Text("$ \(item.item.priceToDouble())")
                    .font(.system(size: 18))
                    .bold()
            }
            .padding([.top, .bottom])
            .frame(width: 150)
            
            Image(systemName: "circle")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
                .font(.system(size: 16, weight: .ultraLight, design: .default))
                .overlay(ItemCountImageOverlay(text: "x\(item.unit)"))
                .padding(.leading, 20)
        }
    }
}

struct CartItemView_Previews: PreviewProvider {
    static var previews: some View {
        let bookService: MockBookService = MockBookService()
        let book = BookViewModel(mockBookService: bookService).mockBookService.books[0]
        let item = CartItems(id: "1", item: book, unit: 2)
        CartItemView(item: item)
    }
}
