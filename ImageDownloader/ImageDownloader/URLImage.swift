//
//  URLImage.swift
//  ImageDownloader
//
//  Created by Todd Fleeman on 1/27/20.
//  Copyright © 2020 Todd Fleeman. All rights reserved.
//

import SwiftUI

struct URLImage: View {
    let url:String
    @ObservedObject private var imageDownloader = ImageDownloader()
    
    init(url: String) {
        self.url = url
        self.imageDownloader.downloadImage(url: self.url)
    }

    var body: some View {
        if let imageData = self.imageDownloader.downloadedData {
            let img = UIImage(data: imageData)
            return VStack {
                Image(uiImage: img!)
                    .resizable()
            }
        } else {
           return VStack {
                Image("placeholder")
                    .resizable()
            }
        }
    }
}

//struct URLImage_Previews: PreviewProvider {
//    static var previews: some View {
//        URLImage(url: "https://rickandmortyapi.com/api/character/avatar/2.jpeg")
//    }
//}
