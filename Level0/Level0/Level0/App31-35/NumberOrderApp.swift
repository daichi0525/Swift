//
//  NumberOrderApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/14.
//

import SwiftUI

struct NumberOrderApp: View {
    @State private var numbers = [5, 3, 1, 4, 2]

    var body: some View {
        VStack {
            Text("数字の並び: \(numbers.map { String($0) }.joined(separator: ", "))")
                .padding()

            Button("並べ替え") {
                numbers.sort()
            }
            .padding()
            .background(Color.orange)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle(Text("数字の順番アプリ"))
    }
}

#Preview {
    NumberOrderApp()
}
