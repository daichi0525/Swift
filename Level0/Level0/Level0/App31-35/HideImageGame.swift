//
//  HideImageGame.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/14.
//

import SwiftUI

struct HideImageGame: View {
    @State private var isHidden = false

    var body: some View {
        VStack {
            if !isHidden {
                Image("dog1")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
            }

            Button(isHidden ? "表示する" : "隠す") {
                isHidden.toggle()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("画像隠しゲーム")
    }
}

#Preview {
    HideImageGame()
}
