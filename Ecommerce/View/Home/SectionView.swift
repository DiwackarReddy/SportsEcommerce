//
//  SectionView.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 12/04/23.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Property
    @State var rotateClockWise: Bool
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockWise ? 90 : -90))
            Spacer()
        }// :- VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)

    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockWise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
        
    }
}
