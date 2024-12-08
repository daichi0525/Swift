//
//  HomeView.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/08.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            // 1. 挨拶アプリ (GreetingApp)
            NavigationLink("挨拶アプリ") {
                GreetingApp()
            }
        }
    }
}

#Preview {
    HomeView()
}
