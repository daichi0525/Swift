//
//  MultipleButtonApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/14.
//

import SwiftUI

struct MultipleButtonApp: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("ボタン 1") {
                print("ボタン 1 が押されました")
            }
            .buttonStyle(DefaultButtonStyle())

            Button("ボタン 2") {
                print("ボタン 2 が押されました")
            }
            .buttonStyle(DefaultButtonStyle())

            Button("ボタン 3") {
                print("ボタン 3 が押されました")
            }
            .buttonStyle(DefaultButtonStyle())
        }
        .padding()
        .navigationTitle("複数ボタンアプリ")
    }
}

#Preview {
    MultipleButtonApp()
}
