//
//  CategoryItemView.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 12/04/23.
//

import SwiftUI

struct CategoryItemView: View {
    // MARK: - Property
    let category: Category
    // MARK: - Body
    var body: some View {
        Button(action: {}) {
            HStack(alignment: .center,spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30,height: 30,alignment: .center)
                    .foregroundColor(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                Spacer()
            }// :- Hstack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray,lineWidth: 2)
            )
            

        }// :- Button

    }
}

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(category: category[0])
            .previewLayout(.sizeThatFits)
    }
}
