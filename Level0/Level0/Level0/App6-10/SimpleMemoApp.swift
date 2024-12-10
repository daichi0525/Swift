//
//  SimpleMemoApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/10.
//

import SwiftUI

struct SimpleMemoApp: View {
    @State private var memo = ""
    @State private var saveMemo = ""
    
    var body: some View {
        VStack {
            TextField("メモを入力", text: $memo)
                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .onChange(of: memo) { oldValue, newValue in
//                    UserDefaults.standard.set(newValue, forKey: "memo")
//                }
            HStack {
                Spacer()
                Button(action: {
                    UserDefaults.standard.set(memo, forKey: "memo")
                    saveMemo = memo
                }) {
                    Text("メモを更新・保存")
                        .font(.headline)
                        .padding(10)
                        .background(Color.green)
                        .cornerRadius(100)
                }
            }
            VStack {
                Text("常時表示メモ:\(memo)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("一時保存メモ: \(saveMemo)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text("格納保存メモ: \(UserDefaults.standard.string(forKey: "memo") ?? "")")
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            
        }
        .padding(.horizontal)
        .navigationTitle("シンプルメモ")
    }
}

#Preview {
    SimpleMemoApp()
}
