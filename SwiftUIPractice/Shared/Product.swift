//
//  Product.swift
//  SwiftUIPractice
//
//  Created by Shireesh Marla on 15/06/2024.
//

import Foundation

// MARK: - ProductArray
struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

// MARK: - Product
struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let category: Category
    let price, discountPercentage, rating: Double
    let stock: Int
    let brand: String?
    let images: [String]
    let thumbnail: String

    var firstImage: String {
        images.first ?? Constants.randomImage
    }
}

enum Category: String, Codable {
    case beauty = "beauty"
    case fragrances = "fragrances"
    case furniture = "furniture"
    case groceries = "groceries"
}
