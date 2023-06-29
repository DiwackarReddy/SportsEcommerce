//
//  CategoryGridView.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 12/04/23.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            LazyHGrid(rows: gridLayout,alignment: .center,spacing: columSpacing,pinnedViews: []) {
                Section {
                    ForEach(category) { category in
                        CategoryItemView(category: category)
                    }
                } header: {
                    SectionView(rotateClockWise: false)
                } footer: {
                    SectionView(rotateClockWise: true)
                }
               
            }// :- Grid
            .frame(height: 140)
            .padding(.horizontal,15)
            .padding(.vertical,10)
        }// :- Scroll
    }
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
    }
}
