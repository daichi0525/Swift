//
//  SimpleMenuApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct SimpleMenuApp: View {
    @State private var selection = "選択してください"

    var body: some View {
        VStack {
            Text(selection)
                .font(.title)
                .padding()

            Menu("メニューを選択") {
                Button("オプション 1") { selection = "オプション 1 を選びました" }
                Button("オプション 2") { selection = "オプション 2 を選びました" }
                Button("オプション 3") { selection = "オプション 3 を選びました" }
            }
            .font(.title)
            .padding()
        }
        .navigationTitle("簡単なメニューアプリ")
    }
}

#Preview {
    SimpleMenuApp()
}
