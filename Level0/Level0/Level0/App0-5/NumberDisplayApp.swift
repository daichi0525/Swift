//
//  NumberDisplayApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/08.
//

import SwiftUI

struct NumberDisplayApp: View {
    @State private var number = 0
    
    var body: some View {
        VStack {
            Text("数字: \(number)")
                .font(.largeTitle)
                .padding()
            HStack {
                Button(action : {
                    number += 1
                }) {
                    Text("カウントアップ")
                        .font(.headline)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
                Button(action: {
                    number -= 1
                }) {
                    Text("カウントダウン")
                        .font(.headline)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(10)
                }
            }
        }
        .navigationTitle("数字表示アプリ")
        Spacer()
    }
}

#Preview {
    NumberDisplayApp()
}
