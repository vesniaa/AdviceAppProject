//
//  DeveloperModel.swift
//  AdviceAppProject
//
//  Created by Валерия Смецкая on 28.03.2022.
//

struct Developer {
    let name: String
    let gitHub: String
    let photo: String
}

extension Developer {
    static func getDeveloper() -> [Developer] {
        
        var developers: [Developer] = []
        
        let names = DevelopersDataManager.shared.names
        let gitHub = DevelopersDataManager.shared.gitHub
        let images = DevelopersDataManager.shared.images
        
        for index in 0..<names.count {
            let developer = Developer(
                name: names[index],
                gitHub: gitHub[index],
                photo: images[index]
            )
            developers.append(developer)
        }
        
        return developers
    }
}
