//
//  SimpleBoardApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct SimpleBoardApp: View {
    @State private var newMessage = ""
    @State private var messages: [String] = UserDefaults.standard.stringArray(forKey: "messages") ?? []

    var body: some View {
        VStack {
            List(messages, id: \.self) { message in
                Text(message)
            }
            
            TextField("メッセージを入力", text: $newMessage)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("投稿") {
                if !newMessage.isEmpty {
                    messages.append(newMessage)
                    UserDefaults.standard.set(messages, forKey: "messages")
                    newMessage = ""
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

        }
        .navigationTitle("シンプル掲示板アプリ")
    }
}

#Preview {
    SimpleBoardApp()
}
