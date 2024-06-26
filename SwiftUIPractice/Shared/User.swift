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

    var work: String {
        "Worker at XYZ"
    }
    var education: String {
        "Bachelor of Technology"
    }

    var aboutMe: String {
        "This is a sentence about me that will look good on my profile!"
    }

    var basics: [UserInterest] {
        [
            UserInterest(iconName: "ruler", emoji: nil, text: "\(height)"),
            UserInterest(iconName: "graduationcap", emoji: nil, text: education),
            UserInterest(iconName: "wineglass", emoji: nil, text: "Socially"),
            UserInterest(iconName: "moon.stars.fill", emoji: nil, text: "Virgo")
        ]
    }

    var interests: [UserInterest] {
        [
            UserInterest(iconName: nil, emoji: "👟", text: "Running"),
            UserInterest(iconName: nil, emoji: "🏋️‍♂️", text: "Gym"),
            UserInterest(iconName: nil, emoji: "🎧", text: "Music"),
            UserInterest(iconName: nil, emoji: "🍪", text: "Cooking")
        ]
    }

    var images: [String] {
        ["https://picsum.photos/500/500", "https://picsum.photos/600/600", "https://picsum.photos/700/700"]
    }

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
