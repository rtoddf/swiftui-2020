//
//  ImageDownloader.swift
//  ImageDownloader
//
//  Created by Todd Fleeman on 1/27/20.
//  Copyright © 2020 Todd Fleeman. All rights reserved.
//

import Foundation

class ImageDownloader: ObservableObject {
    
    @Published var downloadedData: Data? = nil
    
    func downloadImage(url:String) {
        guard let imageURL = URL(string: url) else {
            fatalError("Invalid URL")
        }
        
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.async {
                self.downloadedData = data
            }
        }
        
    }
    
}
