# 1. Level0

## 1.1. 目次
- [1. Level0](#1-level0)
	- [1.1. 目次](#11-目次)
	- [1.2. 構築手順](#12-構築手順)
		- [1.2.1. プロジェクト作成](#121-プロジェクト作成)
		- [1.2.2. Home画面作成](#122-home画面作成)
	- [1.3. アプリ機能の作成](#13-アプリ機能の作成)
		- [1.3.1. 挨拶アプリ (GreetingApp)](#131-挨拶アプリ-greetingapp)

## 1.2. 構築手順

[先頭ページ](#1-level0)

### 1.2.1. プロジェクト作成
1. Xcode起動
2. Create New Project...
   1. ![alt text](image-1.png)
3. ios→App
   1. ![alt text](image-2.png)
4. Level0
   1. ![alt text](image-3.png)
5. ディレクトリ(適当)
   1. ![alt text](image-4.png)
6. Level0App.swiftの修正
   1. ContentView()のコメントアウト
   2. HomeView()に変更
   3. ![alt text](image-5.png)
7. HomeView.swiftの作成
   1. ![alt text](image-6.png)
   2. ![alt text](image-7.png)
   3. ![alt text](image-8.png)
8. 確認と表示
   1. ![alt text](image-9.png)

### 1.2.2. Home画面作成
1. NavigationViewを使用
2. HomeView.swiftの実装
   ```swift
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
   ```
   1. GreetingApp.swiftが無いのでエラーになる
   2. ![alt text](image-10.png)

[先頭章](#12-構築手順)

## 1.3. アプリ機能の作成

[先頭ページ](#1-level0)

### 1.3.1. 挨拶アプリ (GreetingApp)

| No | アプリ名(日本語) | 物理名 | 難易度(10段階) | 所要時間(日数) | 機能 | おすすめポイント | その他必要なものや特記事項 |
|---|---|---|---|---|---|---|---|
| 1 | 挨拶アプリ | GreetingApp | 0 | 1h | ボタンを押すと挨拶を表示 | シンプルなUI操作を学べる | - |

1. GreetingApp.swiftの作成
   1. ![alt text](image-11.png)
2. GreetingApp.swiftの実装
   ```swift
    struct GreetingApp: View {
       @State private var greeting = "こんにちは！"
       
       var body: some View {
           VStack {
               Text(greeting)
                   .font(.largeTitle)
                   .padding()
               
               Button(action: {
                   greeting = "おはようございます！"
               }) {
                   Text("挨拶を変更")
                       .font(.title)
                       .padding()
                       .background(Color.blue)
                       .foregroundColor(.white)
                       .cornerRadius(10)
               }
           }
       }
   }
   ```
3. CanvasでHomeView⇄GreetingApp間の画面遷移と挨拶変更ボタン
   1. これだと一回しか変えれないな...
   2. ![alt text](1.gif)
4. onとoffnのスイッチを使って切替に実装変更
   ```swift
   struct GreetingApp: View {
       @State private var isOn = false
       
       var body: some View {
           VStack {
               Text(isOn ? "おはようございます！" : "こんにちは！")
                   .font(.largeTitle)
                   .padding()
               
               Button(action: {
                   isOn.toggle()
               }) {
                   Text("挨拶を変更")
                       .font(.title)
                       .padding()
                       .background(Color.blue)
                       .foregroundColor(.white)
                       .cornerRadius(10)
               }
           }
       }
   }
   ```
5. 画面遷移と挨拶変更ボタン
   1. ![alt text](2.gif)
6. 挨拶アプリ (GreetingApp) 作成完了

[先頭章](#13-アプリ機能の作成)