//
//  MemsViewController.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 27.03.2022.
//

import UIKit

class MemsViewController: UIViewController {
    
    
    @IBOutlet var avatarImage: UIImageView!
    
    let avatars = ["Avatar1.jpeg", "Avatar2.jpeg",
                   "Avatar3.jpeg", "Avatar4.jpeg",
                   "Avatar5.jpeg", "Avatar6.jpeg"]
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func changeAvatarPressed(_ sender: UIButton) {
        avatarImage.image = UIImage(named: avatars[Int(arc4random_uniform(UInt32(avatars.count)))]) // рандомно присваиваем UIImageView один из аватаров из маассива avatars
    }
}


/*memsImage.image = UIImage(named: "avatars \(arc4random_uniform(5) + 1).jpeg")
еще один вариант*/


