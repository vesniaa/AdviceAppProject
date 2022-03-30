//
//  ImageModel.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 30.03.2022.
//

import Foundation

struct Image {
    let image: String
}

extension Image {
    
    static func getImage() -> [Image] {
        
        let images = ImagesDataManager.shared.avatars
        
        var avatars: [Image] = []
        
        for index in 0..<images.count {
            let image = Image(image: images[index])
            avatars.append(image)
        }
        return avatars
    }
}
