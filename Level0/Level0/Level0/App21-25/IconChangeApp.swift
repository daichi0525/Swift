//
//  IconChangeApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/12.
//

import SwiftUI
//備考:
//アプリの Info.plist に CFBundleIcons を設定し、別のアイコン (AppIcon2) を用意する必要があります。
//アイコン作成はこちらがおすすめhttps://github.com/onmyway133/IconGenerator?tab=readme-ov-file

struct IconChangeApp: View {
    let iconNames = ["AppIcon 1", "AppIcon 2", "AppIcon 3" , "AppIcon 4", "AppIcon 5", "AppIcon 6"] // アイコンセットの名前
    @State private var currentIconIndex = 0
    
    var body: some View {
        Button("アイコンを変更") {
            UIApplication.shared.setAlternateIconName(iconNames[currentIconIndex])
            currentIconIndex = (currentIconIndex + 1) % iconNames.count
        }
        .padding()
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(10)
        Text("次のアイコン：\(iconNames[currentIconIndex])")
            .padding()
        Text("アイコン作成は以下を参考にしました。")
        Text("https://github.com/onmyway133/IconGenerator?tab=readme-ov-file")
            .navigationTitle("アイコン変更アプリ")
    }
}

#Preview {
    IconChangeApp()
}
