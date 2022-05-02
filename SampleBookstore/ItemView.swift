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
        ItemView(book: .init(title: "Tiempo de perdón", author: "by: John Grisham", summary: "Clanton, Mississippi, 1990. Stuart Kofer, ayudante del sheriff, se considera intocable. Aunque, cuando bebe más de la cuenta, algo bastante habitual, vuelca sus ataques de ira en su novia, Josie, y los hijos adolescentes de esta, el código de silencio de la policía siempre le ha protegido", price: "$189.00", image: "perdon"))
            .padding()
            .previewLayout(.fixed(width: 350.0, height: 150.0))
        }
}
