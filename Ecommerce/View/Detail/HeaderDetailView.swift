//
//  HeaderDetailView.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 14/04/23.
//

import SwiftUI

struct HeaderDetailView: View {
    // MARK: - Property
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
                .foregroundColor(.white)
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.white)
        }// :- VSTACK

    }
}

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .background(colorGray)
    }
}
