//
//  DetailView.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 27/04/22.
//

import SwiftUI

struct DetailView: View {
    
    @ObservedObject var bookViewModel: BookViewModel
    @State private var animate = false
    
    var bookId: Int
    var randomMinRange = 5.0
    var randomMaxRange = 8.0
    
    init(service: MockBookService, bookId: Int) {
        self.bookViewModel = BookViewModel(mockBookService: service)
        self.bookId = bookId
    }
    
    func getBook() -> BookDetail {
        return bookViewModel.mockBookService.bookDetails(bookId: bookId)
    }
    
    func addToCart() {
        bookViewModel.mockBookService.addToCart(bookId: bookId)
    }
    
    var body: some View {
        VStack {
            Image(getBook().image)
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(color: .black, radius: 10, x: 1, y: 1)
                .frame(width: 200, height: 300)
                .scaleEffect(animate ? 1 : 0.1)
                .rotationEffect(.degrees(animate ? 0: 180))
                .opacity(animate ? 1 : 0)
            
            VStack {
                Text(getBook().author)
                    .font(.headline)
                    .foregroundColor(.gray)
                    .padding(.top)
                
                Text(getBook().title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                
                Text(getBook().description)
                    .font(.callout)
                    .lineSpacing(4.0)
                    .foregroundColor(.gray)
                    .padding()
                    .lineLimit(4)
                
                HStack {
                    ForEach(getBook().genre, id: \.self) { genere in
                        Text(genere.rawValue)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                            .rotationEffect(.degrees(animate ? 0 : 180))
                            .opacity(animate ? 1: 0)
                            .animation(.spring(response: 0.7, dampingFraction: 0.4, blendDuration: 100)
                                .delay(Double.random(in: randomMinRange..<randomMaxRange) * 0.1), value: animate)
                    }
                }
                
                Divider()
                    .padding(10)
                
                Button(action: {}) {
                    Text("Comprar por $\(getBook().priceToDouble())")
                        .fontWeight(.medium)
                        .foregroundColor(Color.white)
                        
                }
                .buttonStyle(.bordered)
                .buttonBorderShape(.roundedRectangle(radius: 0))
                .controlSize(.large)
                .background(Color.black)
                .cornerRadius(40)
                .scaleEffect(animate ? 1 : 0)
                .rotationEffect(.degrees(animate ? 0 : 180))
                .opacity(animate ? 1 : 0)
                .animation(.spring(response: 0.7, dampingFraction: 0.4, blendDuration: 1)
                    .delay(Double.random(in: randomMinRange..<randomMaxRange) * 0.2), value: animate)
                
            }
        }
        .onAppear {
            withAnimation {
                animate.toggle()
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let bookService: MockBookService = MockBookService()
        DetailView(service: bookService, bookId: 1)
    }
}
