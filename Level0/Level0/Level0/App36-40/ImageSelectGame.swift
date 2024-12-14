//
//  ImageSelectGame.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct ImageSelectGame: View {
    @State private var selectedImage = "circle"

    let images = ["circle", "square", "triangle"]

    var body: some View {
        VStack {
            Image(systemName: selectedImage)
                .resizable()
                .frame(width: 100, height: 100)
                .padding()

            HStack {
                ForEach(images, id: \.self) { image in
                    Button(action: {
                        selectedImage = image
                    }) {
                        Image(systemName: image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    }
                }
            }
        }
        .navigationTitle("画像選択ゲーム")
    }
}

#Preview {
    ImageSelectGame()
}
