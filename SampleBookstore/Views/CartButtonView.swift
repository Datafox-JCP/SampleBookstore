//
//  CartButtonView.swift
//  SampleBookstore
//
//  Created by Juan Hernandez Pazos on 05/05/22.
//

import SwiftUI

struct CartButtonView: View {
    
    var numberOfItems: Int
    
    var body: some View {
        VStack {
            Image("shopping-bag")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32, alignment: .center)
                .overlay(CartImageOverlay(numberOfItems: numberOfItems)
                            .padding(.top, 4),
                         alignment: .center)
        }
    }
}

struct CartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView(numberOfItems: 2)
            .previewLayout(.sizeThatFits)
    }
}
