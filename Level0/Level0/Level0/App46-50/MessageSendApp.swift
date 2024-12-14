//
//  MessageSendApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct MessageSendApp: View {
    @State private var message = ""

    var body: some View {
        VStack {
            TextField("メッセージを入力", text: $message)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("送信") {
                print("送信されたメッセージ: \(message)")
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("メッセージ送信アプリ")
    }
}

#Preview {
    MessageSendApp()
}
