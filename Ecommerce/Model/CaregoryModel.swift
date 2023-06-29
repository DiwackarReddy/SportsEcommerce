//
//  CaregoryModel.swift
//  Ecommerce
//
//  Created by Diwakar Reddy  on 12/04/23.
//

import Foundation

struct Category: Codable ,Identifiable {
    let id: Int
    let name: String
    let image: String
}
