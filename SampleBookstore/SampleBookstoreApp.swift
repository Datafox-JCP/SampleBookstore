//
//  SampleBoolstoreApp.swift
//  SampleBoolstore
//
//  Created by Juan Hernandez Pazos on 27/04/22.
//

import SwiftUI

@main
struct SampleBookstoreApp: App {
    
    let bookService: MockBookService = MockBookService()
    
    var body: some Scene {
        WindowGroup {
            MainView(service: bookService)
        }
    }
}
