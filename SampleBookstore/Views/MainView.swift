//
//  MainView.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 28/04/22.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var booksViewModel: BookViewModel
    
    init(service: MockBookService) {
        self.booksViewModel = BookViewModel(mockBookService: service)
    }
    
    var body: some View {
        NavigationView {
            List(booksViewModel.mockBookService.bookList()) { book in
                NavigationLink(destination: NavigationLazyView(
                    DetailView(
                        service: booksViewModel.mockBookService,
                        bookId: book.id))) {
                    ItemView(book: book)
                }
            }
            .navigationBarTitle("Book list")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        let bookService: MockBookService = MockBookService()
        MainView(service: bookService)
    }
}
