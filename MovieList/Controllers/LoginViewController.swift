//
//  LoginViewController.swift
//  MovieList
//
//  Created by ilkay sever on 25.01.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    var eMail = ""
    var password = ""
    
    @IBOutlet weak var eMailTextLabel: UITextField!
    @IBOutlet weak var passwordTextLabel: UITextField!
    @IBOutlet weak var rememberBtn: UIButton!
    @IBOutlet weak var acceptBtn: UIButton!
    
    //Ekrana dokununca klavye gizleme.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        eMailTextLabel.text = eMail
        passwordTextLabel.text = password
        
    }
    
    @IBAction func rememberBtnTapped(_ sender: UIButton) {
        if sender.isSelected{
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    }
    
    @IBAction func acceptBtnTapped(_ sender: UIButton) {
        
        if sender.isSelected{
            sender.isSelected = false
        } else {
            sender.isSelected = true
        }
    }
    
    @IBAction func loginBtnTapped(_ sender: Any) {
        
        if eMailTextLabel!.text!.isEmpty || passwordTextLabel.text!.isEmpty{
            showAlert(titleInput: "Hata", messageInput: "Email veya Şifre alanı boş.")
        }
        
        self.performSegue(withIdentifier: "toFilmListVC", sender: self)
    }
    
    func showAlert(titleInput: String, messageInput:String){
        
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
