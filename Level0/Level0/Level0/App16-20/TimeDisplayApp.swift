//
//  TimeDisplayApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI

struct TimeDisplayApp: View {
    @State private var currentTime = Date()

    var body: some View {
        VStack {
            Text("\(currentTime, formatter: dateFormatter)")
                .font(.largeTitle)
                .padding()

            Button("更新") {
                currentTime = Date()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .navigationTitle("時間表示アプリ")
    }

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        return formatter
    }
}

#Preview {
    TimeDisplayApp()
}
