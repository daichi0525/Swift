//
//  AutoCounterApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct AutoCounterApp: View {
    @State private var counter = 0
    @State private var timer: Timer?

    var body: some View {
        VStack {
            Text("\(counter)")
                .font(.largeTitle)
                .padding()

            Button("スタート") {
                startCounting()
            }
            .padding()
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)

            Button("ストップ") {
                stopCounting()
            }
            .padding()
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("自動カウントアプリ")
    }

    func startCounting() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            counter += 1
        }
    }

    func stopCounting() {
        timer?.invalidate()
    }
}

#Preview {
    AutoCounterApp()
}
