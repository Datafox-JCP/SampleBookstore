//
//  ShoppingCartButtomView.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 02/05/22.
//

import SwiftUI

struct ShoppingCartButtomView: View {
    
    var numberOfItems: Int
    
    var body: some View {
        VStack {
            Image("shopping-bag")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32, alignment: .center)
                .overlay(CartImageOverlay(numberOfItems: numberOfItems)
                    .padding(.top, 4),alignment: .center)
            Spacer()
        }
    }
}

struct ShoppingCartButtomView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartButtomView(numberOfItems: 2)
    }
}
