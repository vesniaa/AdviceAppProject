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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialLabel.text = """
Чтобы получить крутой совет для
программиста, введи свое имя!
"""
        enterButton.setTitle("Lets Go", for: .normal)
        enterButton.backgroundColor = .blue
        enterButton.layer.cornerRadius = 10
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let tipsChooseVC = $0 as? TipsChooseViewController {
                tipsChooseVC.tips = tips
                tipsChooseVC.name = nameTextField.text
            } else if let navigationVC = $0 as? UINavigationController {
                let developerListVC = navigationVC.topViewController as! DevelopersListViewController
                developerListVC.developers = developerList
            }
        }
    }
    
    @IBAction func enterButtonPressed() {
        if nameTextField.text == "" {
            showAlert(title: "Введите ваше имя!", message: "Заклинаю во имя света!", textField: nameTextField)
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
