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

    static var mock: Product {
        Product(
            id: 123,
            title: "Example product title",
            description: "This is some mock product description that goes here",
            category: Category.beauty,
            price: 999,
            discountPercentage: 15,
            rating: 4.5,
            stock: 50,
            brand: "Calvin Kein",
            images: [Constants.randomImage, Constants.randomImage, Constants.randomImage],
            thumbnail: Constants.randomImage
        )
    }
}

enum Category: String, Codable {
    case beauty = "beauty"
    case fragrances = "fragrances"
    case furniture = "furniture"
    case groceries = "groceries"
}

struct ProductRow: Identifiable {
    let id = UUID().uuidString
    let title: String
    let products: [Product]
}
