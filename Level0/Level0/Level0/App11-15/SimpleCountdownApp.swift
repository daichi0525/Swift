//
//  SimpleCountdownApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct SimpleCountdownApp: View {
    @State private var countdown = 10
    @State private var timerActive = false
    @State private var timer: Timer?

    var body: some View {
        VStack {
            Text("カウントダウン: \(countdown)")
                .font(.largeTitle)
                .padding()

            Button("開始") {
                startCountdown()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(100)
        }
        .navigationTitle("簡単なカウントダウン")
    }

    func startCountdown() {
        timer?.invalidate()
        countdown = 10
        timerActive = true

        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if countdown > 0 {
                countdown -= 1
            } else {
                timer?.invalidate()
                timerActive = false
            }
        }
    }
}

#Preview {
    SimpleCountdownApp()
}
