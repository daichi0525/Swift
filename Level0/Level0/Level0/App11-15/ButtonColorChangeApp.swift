//
//  ButtonColorChangeApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct ButtonColorChangeApp: View {
    @State private var buttonColor = Color.blue

    var body: some View {
        Button("ボタンの色を変更") {
            buttonColor = buttonColor == .blue ? .green : .blue
        }
        .padding()
        .background(buttonColor)
        .foregroundColor(.white)
        .cornerRadius(10)
        .font(.title)
        .navigationTitle("ボタン色変更アプリ")
    }
}

#Preview {
    ButtonColorChangeApp()
}
