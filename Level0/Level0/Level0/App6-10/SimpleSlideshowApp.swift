//
//  SimpleSlideshowApp.swift
//  Level0
//
//  Created by nakajimadaichi on 2024/12/11.
//

import SwiftUI

struct SimpleSlideshowApp: View {
    let imagesTitle = ["2匹の親子の柴犬のお話", "無人島に飼い主に見捨てられた", "突然、嵐になってしまった", "急いで屋根のある所へ逃げます", "洞窟に逃げ込みました" ,"嵐が止んだので釣りに行くぞー" ,"おしまい！！！"]
    @State private var currentImageTitleIndex = 0
    let images = ["dog1", "dog2", "dog3" ,"dog4", "dog5", "dog6", "end"]
//    @State private var currentImageIndex = 0
    
    var body: some View {
        VStack {
            Text(imagesTitle[currentImageTitleIndex])
            Image(images[currentImageTitleIndex])
                .resizable()
                .scaledToFit()
                .frame(height: 300)
                .padding()
            
            Button(action: {
                currentImageTitleIndex = (currentImageTitleIndex + 1) % imagesTitle.count
            }) {
                Text("次の画像")
                    .font(.title)
                    .padding()
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .navigationTitle("簡単なスライドショー")
    }
}

#Preview {
    SimpleSlideshowApp()
}
