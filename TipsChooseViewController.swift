//
//  TipsChooseViewController.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 27.03.2022.
//

import UIKit

class TipsChooseViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var getTipsButton: UIButton!
    
    var name: String!
    var tips: [Tips]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = """
Приветствую тебя путник \(name ?? ""),
сегодня ты познаешь силу света!
"""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let showTipsVC = segue.destination as? ShowTipsViewController else { return }
        showTipsVC.tips = tips
    }
}
