//
//  RandomNumberApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct RandomNumberApp: View {
    @State private var randomNumber = 0

    var body: some View {
        VStack {
            Text("ランダムな数字: \(randomNumber)")
                .font(.largeTitle)
                .padding()

            Button("生成") {
                randomNumber = Int.random(in: 1...100)
            }
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("ランダムな数字アプリ")
    }
}

#Preview {
    RandomNumberApp()
}
