//
//  SimpleCalendarApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/15.
//

import SwiftUI

struct SimpleCalendarApp: View {
    @State private var selectedDate = Date()

    var body: some View {
        VStack {
            DatePicker("日付を選択", selection: $selectedDate, displayedComponents: .date)
                .datePickerStyle(GraphicalDatePickerStyle())
                .padding()

            Text("選択した日付: \(selectedDate, formatter: dateFormatter)")
                .padding()
        }
        .navigationTitle("シンプルカレンダーアプリ")
    }

    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
}

#Preview {
    SimpleCalendarApp()
}
