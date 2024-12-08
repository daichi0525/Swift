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
            .navigationTitle("アプリ一覧")
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
