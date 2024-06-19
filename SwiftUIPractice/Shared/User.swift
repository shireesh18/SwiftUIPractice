//
//  User.swift
//  SwiftUIPractice
//
//  Created by Shireesh Marla on 15/06/2024.
//

import Foundation

struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

// MARK: - User
struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let bloodGroup: String
    let height, weight: Double

    static var mock: User {
        User(
            id: 444,
            firstName: "Shireesh",
            lastName: "Marla",
            age: 44,
            email: "shireesh@marla.com",
            phone: "",
            username: "",
            password: "",
            image: Constants.randomImage,
            bloodGroup: "",
            height: 180,
            weight: 65
        )
    }
}
