//
//  MemsViewController.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 27.03.2022.
//

import UIKit

class MemsViewController: UIViewController {
    
    var images: [Image]!
    
    @IBOutlet var avatarImage: UIImageView! {
        didSet {
            avatarImage.layer.cornerRadius = 20
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        avatarImage.image = UIImage(named: "1")
        view.addVerticalGradientLayer(topColor: .lightYellow, bottomColor: .lightOrange)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func changeImage() {
        if avatarImage.image == UIImage(named: "1") {
            avatarImage.image = UIImage(named: "2")
        } else if avatarImage.image == UIImage(named: "2") {
            avatarImage.image = UIImage(named: "3")
        } else if avatarImage.image == UIImage(named: "3") {
            avatarImage.image = UIImage(named: "4")
        } else if avatarImage.image == UIImage(named: "4") {
            avatarImage.image = UIImage(named: "5")
        } else if avatarImage.image == UIImage(named: "5") {
            avatarImage.image = UIImage(named: "6")
        } else {
            avatarImage.image = UIImage(named: "1")
        }
    }
}


