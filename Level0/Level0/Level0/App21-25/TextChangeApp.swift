//
//  TextChangeApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct TextChangeApp: View {
    @State private var displayText = "初期テキスト"

    var body: some View {
        VStack {
            Text(displayText)
                .font(.title)
                .padding()

            Button("文字を変更") {
                displayText = "新しいテキスト"
            }
            .padding()
            .background(Color.purple)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("文字変更アプリ")
    }
}

#Preview {
    TextChangeApp()
}
