//
//  IconChangeGame.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct IconChangeGame: View {
    @State private var iconName: String = "dog1"
    @State private var randomNumber1: Int = Int.random(in: 1...3)
    @State private var randomNumber2: Int = Int.random(in: 4...6)

    var body: some View {
        VStack {
            Image(iconName)
                .resizable()
                .frame(width: 100, height: 100)
                .padding()

            Button("アイコン変更") {
                iconName = iconName == "dog1" ? "dog\(randomNumber2)" : "dog\(randomNumber1)"
                randomNumber1 = Int.random(in: 1...3)
                randomNumber2 = Int.random(in: 4...6)
            }
            .padding()
            .background(Color.pink)
            .foregroundColor(.white)
            .cornerRadius(10)

            Text("アイコンじゃなくてただの画像変更じゃん\n現在の画像名:\(iconName)")
        }
        .navigationTitle("アイコン変更ゲーム")
    }
}

#Preview {
    IconChangeGame()
}
