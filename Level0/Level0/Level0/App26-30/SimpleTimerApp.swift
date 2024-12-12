//
//  SimpleTimerApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct SimpleTimerApp: View {
    @State private var timer: Timer?
    @State private var timeElapsed = 0
    @State private var isButton = false

    var body: some View {
        VStack {
            Text("経過時間: \(timeElapsed) 秒")
                .font(.largeTitle)
                .padding()

            HStack {
                Button(isButton ? "ストップ" :"スタート") {
                    if isButton {
                        stopTimer()
                    } else {
                        startTimer()
                    }                }
                .padding()
                .background(isButton ? Color.blue : Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)

                Button("リセット") {
                    resetTimer()
                }
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        .navigationTitle("シンプルタイマーアプリ")
    }

    func startTimer() {
        isButton = true
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            timeElapsed += 1
        }
    }

    func stopTimer() {
        isButton = false
        timer?.invalidate()
    }

    func resetTimer() {
        isButton = false
        timer?.invalidate()
        timeElapsed = 0
    }
}

#Preview {
    SimpleTimerApp()
}
