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
        AppInfo(title: "簡単なスライドショー", destination: AnyView(SimpleSlideshowApp())),
        AppInfo(title: "テキスト表示", destination: AnyView(TextDisplayApp())),
        AppInfo(title: "数字足し算", destination: AnyView(SimpleAdditionApp())),
        AppInfo(title: "簡単なカウントダウン", destination: AnyView(SimpleCountdownApp())),
        AppInfo(title: "ボタン色変更", destination: AnyView(ButtonColorChangeApp())),
        AppInfo(title: "ランダムな数字アプリ", destination: AnyView(RandomNumberApp())),
        AppInfo(title: "簡単なメニューアプリ", destination: AnyView(SimpleMenuApp())),
        AppInfo(title: "入力フォームアプリ", destination: AnyView(InputFormApp())),
        AppInfo(title: "画像表示アプリ", destination: AnyView(ImageDisplayApp())),
        AppInfo(title: "タイトル変更アプリ", destination: AnyView(TitleChangeApp())),
        AppInfo(title: "数字減算アプリ", destination: AnyView(SimpleSubtractionApp())),
        AppInfo(title: "時間表示アプリ", destination: AnyView(TimeDisplayApp())),
        AppInfo(title: "クリック音アプリ", destination: AnyView(ClickSoundApp())),
        AppInfo(title: "単純な画像回転アプリ", destination: AnyView(SimpleImageRotationApp())),
        AppInfo(title: "アイコン変更アプリ", destination: AnyView(IconChangeApp())),
        AppInfo(title: "スクロールビューアプリ", destination: AnyView(ScrollViewApp())),
        AppInfo(title: "文字変更アプリ", destination: AnyView(TextChangeApp())),
        AppInfo(title: "ボタンカウントアプリ", destination: AnyView(ButtonCountApp())),
        AppInfo(title: "シンプルタイマーアプリ", destination: AnyView(SimpleTimerApp())),
        AppInfo(title: "数字反転アプリ", destination: AnyView(ReverseNumberApp())),
        AppInfo(title: "色の名前表示アプリ", destination: AnyView(ColorNameDisplayApp())),
        AppInfo(title: "複数ボタンアプリ", destination: AnyView(ContentView())),
        AppInfo(title: "数字の順番アプリ", destination: AnyView(ContentView())),
        AppInfo(title: "画像隠しゲーム", destination: AnyView(ContentView())),
        AppInfo(title: "ボタン押下回数アプリ", destination: AnyView(ContentView())),
        AppInfo(title: "", destination: AnyView(ContentView())),
        AppInfo(title: "", destination: AnyView(ContentView())),
        AppInfo(title: "", destination: AnyView(ContentView())),
        AppInfo(title: "", destination: AnyView(ContentView())),
        AppInfo(title: "", destination: AnyView(ContentView())),
        AppInfo(title: "マップアプリ", destination: AnyView(MapApp())),
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
