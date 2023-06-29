//
//  productDetailVew.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 14/04/23.
//

import SwiftUI

struct productDetailVew: View {
    // MARK: - Property
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading,spacing: 5) {
            // NAVBAR
            NavBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            // DETAIL TOP PART
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // DETAIL BOTTOM PART
            VStack(alignment: .center,spacing: 0) {
                Text("")
                // RATINGS + SIZES
                RatingsSizes()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                
                // DESCRIPTION
                ScrollView(.vertical,showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }// :- ScrollView
                // QUANTITY + FAVOURITE
                QuantityFavourite()
                    .padding(.vertical,10)
                // ADD TO CART
                AddToCart()
                    .padding(.bottom,20)
                Spacer()
            }// :- VSTACK
            .padding(.horizontal)
            .background(Color.white.clipShape(CustomShape())
                .padding(.top,-105))
           
        }// :- VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background {
            Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue: shop.selectedProduct?.blue ?? sampleProduct.blue).ignoresSafeArea(.all,edges: .all)
        }
    }
}

struct productDetailVew_Previews: PreviewProvider {
    static var previews: some View {
        productDetailVew()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
        
    }
}
