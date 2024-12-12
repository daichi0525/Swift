//
//  RandomColorApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct RandomColorApp: View {
    @State private var backgroundColor = Color.yellow

    var body: some View {
        VStack {
            Button("背景色を変更") {
                backgroundColor = Color(
                    red: Double.random(in: 0...1),
                    green: Double.random(in: 0...1),
                    blue: Double.random(in: 0...1)
                )
            }
            .padding()
            .background(Color.black)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .frame(width: 300, height: 500)
        .background(backgroundColor)
        .edgesIgnoringSafeArea(.all)
        .navigationTitle("ランダム色アプリ")
    }

}

#Preview {
    RandomColorApp()
}
