//
//  DateDisplayApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/08.
//

import SwiftUI

struct DateDisplayApp: View {
    @State private var dateText = ""
    @State private var nowDate = Date()
    @State private var currentDate = Date()
    private let dateFormatter = DateFormatter()
    
    init() {
        dateFormatter.dateFormat = "YYYY/MM/dd(E) HH:mm:ss.S"
        dateFormatter.locale = Locale(identifier: "ja_JP")
    }
    
    var body: some View {
        VStack {
            Text(dateText.isEmpty ? "\(dateFormatter.string(from: nowDate))" : dateText)
                .onAppear {
                    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
                        self.nowDate = Date()
                        dateText = "\(dateFormatter.string(from: nowDate))"
                    }
                }
                .padding(.all, 20)
            HStack {
                DatePicker("", selection: $currentDate)
                    .font(.title3)
                    .padding()
                Button(action: {
                    currentDate = Date()
                }) {
                    Text("更新")
                        .font(.title3)
                        .padding(.horizontal, 20 )
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(30)
                }
            }
            .frame(alignment: .trailing)
            .padding()
            Spacer()
        }
        .navigationTitle("日付表示アプリ")
    }
}

#Preview {
    DateDisplayApp()
}
