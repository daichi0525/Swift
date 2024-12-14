//
//  ImageInvertApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct ImageInvertApp: View {
    @State private var isFlipped = false

    var body: some View {
        VStack {
            Image("dog1")
                .resizable()
                .frame(width: 200, height: 200)
                .scaleEffect(x: isFlipped ? -1 : 1, y: 1)
                .padding()

            Button("反転") {
                isFlipped.toggle()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("画像反転アプリ")
    }
}

#Preview {
    ImageInvertApp()
}
