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
}