//
//  NavBarDetailView.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 14/04/23.
//

import SwiftUI

struct NavBarDetailView: View {
    // MARK: - Property
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn){
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }) {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            Spacer()
            Button(action: {}) {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }
        }// :- HStack

    }
}

struct NavBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarDetailView()
            .previewLayout(.sizeThatFits)
            .background(.gray)
            
    }
}
