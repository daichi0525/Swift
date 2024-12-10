//
//  HomeView.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/08.
//

import SwiftUI

struct HomeView: View {
    let apps: [AppInfo] = [
        AppInfo(title: "純正アプリ", destination: AnyView(ContentView())),
        AppInfo(title: "挨拶アプリ", destination: AnyView(GreetingApp())),
        AppInfo(title: "色変化アプリ", destination: AnyView(ColorChangeApp())),
        AppInfo(title: "名前表示アプリ", destination: AnyView(NameDisplayApp())),
        AppInfo(title: "数字表示アプリ", destination: AnyView(NumberDisplayApp())),
        AppInfo(title: "簡単な電卓", destination: AnyView(SimpleCalculator())),
        AppInfo(title: "日付表示アプリ", destination: AnyView(DateDisplayApp())),
        AppInfo(title: "ボタンカウンター", destination: AnyView(ButtonCounterApp())),
        AppInfo(title: "シンプルメモ", destination: AnyView(SimpleMemoApp())),
        AppInfo(title: "簡単なスライドショー", destination: AnyView(NumberDisplayApp())),
        AppInfo(title: "テキスト表示", destination: AnyView(NumberDisplayApp())),
        AppInfo(title: "数字足し算", destination: AnyView(NumberDisplayApp())),
        AppInfo(title: "簡単なカウントダウン", destination: AnyView(NumberDisplayApp())),
        AppInfo(title: "ボタン色変更", destination: AnyView(NumberDisplayApp())),
    ]

    var body: some View {
        NavigationStack {
            List(apps) { app in
                NavigationLink(destination: app.destination) {
                    ScrollView {
                        HStack {
                            Text("\(apps.firstIndex(where: { $0.id == app.id })! + 0)")
                            Text(app.title)
                        }
                    }
                }
            }
            .navigationTitle("アプリ一覧(Level0)")
        }
    }
}

struct AppInfo: Identifiable {
    let id = UUID()
    let title: String
    let destination: AnyView
}

#Preview {
    HomeView()
}
