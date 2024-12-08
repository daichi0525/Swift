//
//  NameDisplayApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/08.
//

import SwiftUI

struct NameDisplayApp: View {
    @State private var name = ""
    
    var body: some View {
        VStack {
            Text("名前")
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("名前を入力", text: $name )
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("こんにちは、 \n\(name)さん!")
                .font(.title)
                .padding()
        }
        .padding()
        .navigationTitle("名前表示アプリ")
    }
}

#Preview {
    NameDisplayApp()
}
