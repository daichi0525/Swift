//
//  SimpleImageRotationApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct SimpleImageRotationApp: View {
    @State private var rotation: Double = 0

    var body: some View {
        VStack {
            Image(systemName: "photo")
                .resizable()
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(rotation))
                .padding()

            Button("回転") {
                rotation += 45
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("単純な画像回転アプリ")
    }
}

#Preview {
    SimpleImageRotationApp()
}
