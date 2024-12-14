//
//  ImageZoomApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct ImageZoomApp: View {
    @State private var scale: CGFloat = 1.0

    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                ScrollView {
                    Image("dog1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 1000, height: 1000)
                        .scaleEffect(scale)
                        .gesture(
                            MagnificationGesture()
                                .onChanged { value in
                                    scale = value
                                }
                        )
                }
            }
        }
        .navigationTitle("画像拡大アプリ")
    }
}

#Preview {
    ImageZoomApp()
}
