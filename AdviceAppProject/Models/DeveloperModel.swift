//
//  DeveloperModel.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 30.03.2022.
//

import Foundation

struct Developer {
    let name: String
    let gitHubNick: String
    let photo: String
}

extension Developer {
    static func getDeveloper() -> [Developer] {
        
        var developers: [Developer] = []
        
        let names = DevelopersDataManager.shared.names
        let gitHubNicks = DevelopersDataManager.shared.gitHubNicks
        let images = DevelopersDataManager.shared.images
        
        for index in 0...names.count - 1 {
            let developer = Developer(name: names[index],
                                      gitHubNick: gitHubNicks[index],
                                      photo: images[index])
            developers.append(developer)
        }
        
        return developers
    }
}
