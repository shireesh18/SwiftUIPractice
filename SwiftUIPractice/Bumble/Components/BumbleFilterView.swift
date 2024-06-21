//
//  BumbleFilterView.swift
//  SwiftUIPractice
//
//  Created by Shireesh Marla on 21/06/2024.
//

import SwiftUI

struct BumbleFilterView: View {

    var options: [String] = ["Everyone", "Trending"]
    @Binding var selection: String
    @Namespace private var namespace

    var body: some View {
        HStack(alignment: .top, spacing: 32) {
            ForEach(options, id: \.self) { option in
                VStack {
                    Text(option)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                        .fontWeight(.medium)
//                        .background(.red)
                    
                    if selection == option {
                        RoundedRectangle(cornerRadius: 2)
                            .frame(height: 1.5)
                            .matchedGeometryEffect(id: "selection", in: namespace)
                    }
                }
                .padding(.top, 8)
                .background(.black.opacity(0.001))
                .foregroundStyle(selection == option ? .bumbleBlack: .bumbleGray)
                .onTapGesture {
                    selection = option
                }
            }
        }
        .animation(.smooth, value: selection)
    }
}

fileprivate struct BumbleFilterViewPreview: View {
    var options: [String] = ["Everyone", "Trending", "Shireesh"]
    @State private var selection = "Everyone"

    var body: some View {
        BumbleFilterView(options: options, selection: $selection)
    }
}

#Preview {
    BumbleFilterViewPreview()
        .padding()
}
