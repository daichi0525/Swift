//
//  ButtonPressCountApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct ButtonPressCountApp: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("ボタンが押された回数: \(count)")
                .font(.title)
                .padding()

            Button("カウントアップ") {
                count += 1
            }
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("ボタン押下回数アプリ")
    }
}

#Preview {
    ButtonPressCountApp()
}
