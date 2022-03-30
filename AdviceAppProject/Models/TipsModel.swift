//
//  TipsModel.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 30.03.2022.
//

struct Tips {
    let morningTips: String
    let dayOneTips: String
    let eveningTwoTips: String
    let nightThreeTips: String
    let timeFourTips: String
}

extension Tips {
    static func getTips() -> [Tips] {
        var tips: [Tips] = []
        
        let morningAdvice = DataManager.tips.advicesTips
        let dayTimeAdvice = DataManager.tips.tipsOneAdvices
        let eveningAdvice = DataManager.tips.tipsTwoAdvices
        let nightAdvice = DataManager.tips.tipsThreeAdvices
        let timeFourAdvice = DataManager.tips.tipsFourAdvices
        
        let iterationCount = min(
            morningAdvice.count,
            dayTimeAdvice.count,
            eveningAdvice.count,
            nightAdvice.count,
            timeFourAdvice.count
        )
        
        for index in 0..<iterationCount {
            let advice = Tips(
                morningTips: morningAdvice[index],
                dayOneTips: dayTimeAdvice[index],
                eveningTwoTips: eveningAdvice[index],
                nightThreeTips: nightAdvice[index],
                timeFourTips: timeFourAdvice[index])
            
            tips.append(advice)
        }
        return tips
    }
}
