//
//  ImageModel.swift
//  AdviceAppProject
//
//  Created by Валерия Смецкая on 28.03.2022.
//

struct Image {
    let image: String
}

extension Image {
    
    static func getImage() -> [Image] {
        
        let images = ImagesDataManager.shared.mems
        
        var mems: [Image] = []
        
        for index in 0..<images.count {
            let image = Image(image: images[index])
            mems.append(image)
        }
        return mems
    }
}
