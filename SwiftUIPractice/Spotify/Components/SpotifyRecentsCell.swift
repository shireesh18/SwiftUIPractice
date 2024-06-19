//
//  SpotifyRecentsCell.swift
//  SwiftUIPractice
//
//  Created by Shireesh Marla on 18/06/2024.
//

import SwiftUI

struct SpotifyRecentsCell: View {

    var imageName: String = Constants.randomImage
    var title: String = "Some random title"

    var body: some View {
        HStack(spacing:16) {
            ImageLoaderView(urlString: imageName)
                .frame(width: 55, height: 55)
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
        }
        .padding(.trailing, 8)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .themeColors(isSelected: false)
        .cornerRadius(6)

    }
}

#Preview {
    ZStack {
        Color.black.ignoresSafeArea()

        VStack {
            HStack {
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
            HStack {
                SpotifyRecentsCell()
                SpotifyRecentsCell()
            }
        }
    }
}
