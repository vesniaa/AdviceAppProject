//
//  DeveloperInfoViewController.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 27.03.2022.
//

import UIKit

class DeveloperInfoViewController: UIViewController {

    @IBOutlet var developerNameLabel: UILabel!
    @IBOutlet var developerGitHubNickLabel: UILabel!
    @IBOutlet var developerAvatarView: UIImageView! {
        didSet {
            developerAvatarView.layer.cornerRadius = developerAvatarView.frame.size.height / 2
        }
    }
    
    var developer: Developer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        developerNameLabel.text = "Name: \(developer.name)"
        developerGitHubNickLabel.text = "GitHub nick: \(developer.gitHubNick)"
        developerAvatarView.image = .init(named: developer.photo)
        view.addVerticalGradientLayer(topColor: .lightYellow, bottomColor: .lightOrange)
    }
}
