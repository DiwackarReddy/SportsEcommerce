//
//  FeaturedItemView.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 12/04/23.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - Property
    let player: Player
    // MARK: - body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorbackround)
        
    }
}
