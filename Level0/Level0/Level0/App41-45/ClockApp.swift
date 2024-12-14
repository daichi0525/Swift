//
//  ClockApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct ClockApp: View {
    @State private var currentTime = Date()

    var body: some View {
        VStack {
            Text(currentTime, style: .time)
                .font(.largeTitle)
                .padding()

            Button("更新") {
                currentTime = Date()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("時計アプリ")
    }
}

#Preview {
    ClockApp()
}
