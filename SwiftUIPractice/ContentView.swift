//
//  ContentView.swift
//  SwiftUIPractice
//
//  Created by Shireesh Marla on 15/06/2024.
//

import SwiftUI
import SwiftfulUI
import SwiftfulRouting

struct ContentView: View {

    @State private var users: [User] = []
    @State private var products: [Product] = []

    var body: some View {
        ScrollView {
            VStack {
                ForEach(products) { product in
                    Text(product.title)
                }
            }
        }
        .padding()
        .task {
            await getData()
        }
    }

    private func getData() async {
        do {
            users = try await DatabaseHelper().getUsers()
            products = try await DatabaseHelper().getProducts()
        } catch {
            
        }
    }
}

#Preview {
    ContentView()
}
