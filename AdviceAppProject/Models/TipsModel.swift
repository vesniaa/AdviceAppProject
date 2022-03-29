//
//  TipsModel.swift
//  AdviceAppProject
//
//  Created by Валерия Смецкая on 28.03.2022.
//

struct Tips {
    let advice: String
}

extension Tips {
    
    static func getTips() -> [Tips] {
        
        let advices = DataManager.shared.advices
        
        var tips: [Tips] = []
        
        for index in 0..<advices.count {
            let advice = Tips(advice: advices[index])
            tips.append(advice)
        }
        return tips
    }
}
