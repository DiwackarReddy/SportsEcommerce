//
//  FooterView.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 12/04/23.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        VStack(alignment: .center,spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            Text("Copyright © Robert Petras\nAll right reserved")
                .foregroundColor(.gray)
                .font(.footnote)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } // : VSTACK
        
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
        
    }
}
