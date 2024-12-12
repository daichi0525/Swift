//
//  ButtonCountApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct ButtonCountApp: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("カウント: \(count)")
                .font(.largeTitle)
                .padding()

            Button("カウントアップ") {
                count += 1
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(10)
        }.navigationTitle("ボタンカウントアプリ")
    }
}

#Preview {
    ButtonCountApp()
}
