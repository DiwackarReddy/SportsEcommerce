//
//  Constants.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 12/04/23.
//

import Foundation
import SwiftUI

// DATA
let players: [Player] = Bundle.main.decode("player.json")
let category: [Category] = Bundle.main.decode("category.json")
let brand: [Brand] = Bundle.main.decode("brand.json")
let product: [Product] = Bundle.main.decode("product.json")
let sampleProduct: Product = product[0]

// COLOR
let colorbackround: Color = Color("ColorBackground")
let colorGray: Color = Color(.systemGray4)

// LAYOUT
let columSpacing: CGFloat = 10
let rowsSpacig: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible() ,spacing: rowsSpacig), count: 2)
}
// UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
// API

// IMAGE

// FONT

// STRING

// MISC



