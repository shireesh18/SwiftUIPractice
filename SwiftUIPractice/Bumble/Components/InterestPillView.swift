//
//  InterestPillView.swift
//  SwiftUIPractice
//
//  Created by Shireesh Marla on 24/06/2024.
//

import SwiftUI

struct InterestPillView: View {

    var iconName: String? = "heart.fill"
    var emoji: String? = "🤙"
    var text: String = "Bachelor of Technology"

    var body: some View {
        HStack(spacing: 4) {
            if let iconName {
                Image(systemName: iconName)
            } else if let emoji {
                Text(emoji)
            }

            Text(text)

        }
        .font(.callout)
        .fontWeight(.medium)
        .padding(.vertical, 6)
        .padding(.horizontal, 12)
        .foregroundStyle(.bumbleBlack)
        .background(.bumbleYellow)
        .cornerRadius(32)
    }
}

#Preview {
    VStack {
        InterestPillView(iconName: nil)
        InterestPillView()
    }
}
