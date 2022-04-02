//
//  ShowTipsViewController.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 27.03.2022.
//

import UIKit

class ShowTipsViewController: UIViewController {

    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var changeAdviceButton: UIButton! {
        didSet{
            changeAdviceButton.layer.cornerRadius = 10
        }
    }
    @IBOutlet var adviceView: UIView! {
        didSet {
            adviceView.layer.cornerRadius = 10
        }
    }
    
    var count = 0
    var tips: [Tips]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: .lightYellow, bottomColor: .lightOrange)
        tipLabel.text = tips[count].advice
        tipLabel.layer.cornerRadius = 10
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

