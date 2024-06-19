//
//  SpotifyPlayListView.swift
//  SwiftUIPractice
//
//  Created by Shireesh Marla on 19/06/2024.
//

import SwiftUI

struct SpotifyPlayListView: View {

    var product: Product = .mock
    var user: User = .mock

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            ScrollView(.vertical) {
                LazyVStack(spacing: 12) {
                    PlaylistHeaderCell(
                        height: 250,
                        title: product.title,
                        subtitle: product.brand ?? "C & K",
                        imageName: product.thumbnail
                    )

                    PlayListDescriptionCell(
                        descriptionText: product.description,
                        userName: user.firstName,
                        subheadline: product.category.rawValue,
                        onAddToPlaylistPressed: nil,
                        onDownloadPressed: nil,
                        onSharePressed: nil,
                        onEllipsisPressed: nil,
                        onShufflePressed: nil,
                        onPlayPressed: nil
                    )
                    .padding(.horizontal, 16)
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    SpotifyPlayListView()
}
