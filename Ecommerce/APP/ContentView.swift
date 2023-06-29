//
//  ContentView.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 12/04/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing:0) {
                    NavigationBarView().padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5,x: 0,y: 05)
                  
                    ScrollView(.vertical,showsIndicators: false) {
                        VStack(spacing: 0) {
                        FeaturedTabView().padding(.vertical,20)
                       CategoryGridView()
                            TitleView(title: "Helmets")
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                              ForEach(product) { product in
                                  ProductItemView(product: product)
                                      .padding([.leading,.trailing]).onTapGesture {
                                          withAnimation(.easeOut){
                                              shop.selectedProduct = product
                                              shop.showingProduct = true
                                          }
                                      }
                              } //: LOOP
                            }) //: GRID
                            TitleView(title: "Brands")
                            BrandGridview()
                            FooterView().padding(.horizontal)
                        }//: VStack
                    } //: scrollview
                } //: VStack
                .background(colorbackround.ignoresSafeArea(.all,edges: .all))
            } else {
               productDetailVew()
            }
        }//:ZStack
        .ignoresSafeArea(.all,edges: .top)
    }
}
// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop()
            )
    }
}
