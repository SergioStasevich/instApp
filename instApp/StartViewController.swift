//
//  StartViewController.swift
//  instApp
//
//  Created by Siarhei Stasevich on 09/11/2022.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var blurEffect: UIVisualEffectView!
    @IBOutlet weak var backView: UIImageView!
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        loginTextField.delegate = self
        passwordTextField.delegate = self

        registerForKeyboardNotifications()
        
    }
    
    
    @IBAction func goToApp(_ sender: UIButton) {
        
        
    }
    
    
    private func registerForKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardWillShow(_ notification: NSNotification) {
        guard let userInfo = notification.userInfo,
              let animationDuration = (userInfo[UIResponder.keyboardAnimationDurationUserInfoKey] as? NSNumber)?.doubleValue,
              let keyboardScreenEndFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else { return }
        
        if notification.name == UIResponder.keyboardWillHideNotification {
            bottomConstraint.constant = 0
        } else {
            bottomConstraint.constant = keyboardScreenEndFrame.height + 10
        }
        
        view.needsUpdateConstraints()
        UIView.animate(withDuration: animationDuration) {
            self.view.layoutIfNeeded()
        }
    }
}

    

extension StartViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.loginTextField.resignFirstResponder()
        self.passwordTextField.resignFirstResponder()
        return true
    }
}
