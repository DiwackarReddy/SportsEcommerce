//
//  Shop.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 14/04/23.
//

import Foundation

class Shop: ObservableObject {
  @Published var showingProduct: Bool = false
  @Published var selectedProduct: Product? //= nil
}
