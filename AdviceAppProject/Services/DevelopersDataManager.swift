//
//  DevelopersDataManager.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 30.03.2022.
//

class DevelopersDataManager {
    
    static let shared = DevelopersDataManager()
    
    let names = [ "Valeriia",
                  "Jane",
    ]
    
    let gitHubNicks = [ "ValeriiaSmtsk",
                        "vesniaa",
    ]
    
    let images = [ "valeriia",
                   "jane"]
    
    private init() {}
}
