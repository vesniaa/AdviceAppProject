//
//  ShowTipsViewController.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 27.03.2022.
//

import UIKit

class ShowTipsViewController: UIViewController {

    @IBOutlet var tipLabel: UILabel!
    
    var count = 0
    var tips: [Tips]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .lightYellow, bottomColor: .lightOrange)
        tipLabel.text = tips[count].advice
    }
    
    @IBAction func changeAdvice() {
        if count == 0 {
            count += 1
            tipLabel.text = tips[count].advice
        } else if count == 1 {
            count += 1
            tipLabel.text = tips[count].advice
        } else if count == 2 {
            count += 1
            tipLabel.text = tips[count].advice
        } else if count == 3 {
            count += 1
            tipLabel.text = tips[count].advice
        } else {
            count = 0
            tipLabel.text = tips[count].advice
        }
    }
}

