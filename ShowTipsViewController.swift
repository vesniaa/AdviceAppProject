//
//  ShowTipsViewController.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 27.03.2022.
//

import UIKit

class ShowTipsViewController: UIViewController {

    @IBOutlet var tipLabel: UILabel!
        
    var tips: [Tips]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let hour = Calendar.current.component(.hour, from: Date())
        let randomIndex = Int.random(in: 0..<tips.count)
        
        switch hour {
        case 3..<10:
            tipLabel.text = tips[randomIndex].morningTips
        case 10..<16:
            tipLabel.text = tips[randomIndex].dayOneTips
        case 16..<22:
            tipLabel.text = tips[randomIndex].eveningTwoTips
        case 22..<28:
            tipLabel.text = tips[randomIndex].nightThreeTips
        default:
            tipLabel.text = tips[randomIndex].timeFourTips
        }
        
    }
}
