//
//  BrandGridview.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 12/04/23.
//

import SwiftUI

struct BrandGridview: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: gridLayout,spacing: columSpacing) {
                ForEach(brand) { brand in
                    BrandItemView(brand: brand)
                }
            }// :- Grid
            .frame(height: 200)
            .padding(15)

        }// :- Scroll

    }
}

struct BrandGridview_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridview()
            .previewLayout(.sizeThatFits)
    }
}
