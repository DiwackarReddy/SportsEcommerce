//
//  AddToCart.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 14/04/23.
//

import SwiftUI

struct AddToCart: View {
    // MARK: - Property
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    
    var body: some View {
        Button(action: {
          feedback.impactOccurred()
        }, label: {
          Spacer()
          Text("Add to cart".uppercased())
            .font(.system(.title2, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
          Spacer()
        }) //: BUTTON
        .padding(15)
        .background(
          Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
          )
        )
        .clipShape(Capsule())
      }
    }

struct AddToCart_Previews: PreviewProvider {
    static var previews: some View {
        AddToCart()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
    }
}
