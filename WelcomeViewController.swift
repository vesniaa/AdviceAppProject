//
//  WelcomeViewController.swift
//  AdviceAppProject
//
//  Created by Евгения Аникина on 27.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet var initialLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var enterButton: UIButton!
    
    let tips = Tips.getTips()
    let developerList = Developer.getDeveloper()
    let images = Image.getImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialLabel.text =
"""
Чтобы получить крутой совет для программиста, введи свое имя!
"""
        enterButton.setTitle("Lets Go", for: .normal)
        enterButton.backgroundColor = .blue
        enterButton.layer.cornerRadius = 10
        
        view.addVerticalGradientLayer(topColor: .lightYellow, bottomColor: .lightOrange)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let tipsChooseVC = $0 as? TipsChooseViewController {
                tipsChooseVC.tips = tips
                tipsChooseVC.name = nameTextField.text
            } else if let navigationVC = $0 as? UINavigationController {
                guard let developerListVC = navigationVC.topViewController as? DevelopersListViewController else { return }
                developerListVC.developers = developerList
            } else {
                guard let memsVC = $0 as? MemsViewController else { return }
                memsVC.images = images
            }
        }
    }
    
    @IBAction func enterButtonPressed() {
        if nameTextField.text == "" {
            showAlert(
                title: "Введите ваше имя!",
                message: "Заклинаю во имя света!",
                textField: nameTextField
            )
        }
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        nameTextField.text = ""
    }
}

extension WelcomeViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension WelcomeViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        enterButtonPressed()
        performSegue(withIdentifier: "tipsChooseVC", sender: nil)
        return true
    }
}

// MARK: - Set background color
extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [
            topColor.cgColor,
            bottomColor.cgColor
        ]
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

// MARK: - UIColor class variable
extension UIColor {
    class var lightOrange: UIColor {
        return UIColor(red: 255.0 / 255.0, green: 139.0 / 255.0, blue: 40.0 / 255.0, alpha: 1)
    }
    
    class var lightYellow: UIColor {
        return UIColor(red: 241 / 255, green: 235 / 255, blue: 156 / 255, alpha: 1)
    }
}
