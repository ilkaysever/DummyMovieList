//
//  ViewController.swift
//  MovieList
//
//  Created by ilkay sever on 25.01.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextLabel: UITextField!
    @IBOutlet weak var eMailTextLabel: UITextField!
    @IBOutlet weak var passwordTextLabel: UITextField!
    @IBOutlet weak var rePasswordTextLabel: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    
    //Ekrana dokununca klavye gizleme.
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDelegates()

    }
    
    @IBAction func registerBtnTapped(_ sender: Any) {
        
        let userName = nameTextLabel.text;
        var userEmail = eMailTextLabel.text;
        var userPassword = passwordTextLabel.text;
        let userRePassword = rePasswordTextLabel.text;
        
        //Boş alan kontrolleri
        if (userName!.isEmpty || userEmail!.isEmpty || userPassword!.isEmpty || userRePassword!.isEmpty){
            showAlert(titleInput: "Hata", messageInput: "Lütfen bütün alanları doldurduğunuzdan emin olunuz.");
            return;
        }
        
        //Şifre eşleşme kontrolü.
        if(userPassword != userRePassword){
            showAlert(titleInput: "Hata", messageInput: "Girmiş olduğunuz şifreler eşleşmemektedir.");
            return;
        }
        
        userEmail = eMailTextLabel.text!
        userPassword = passwordTextLabel.text!
        self.performSegue(withIdentifier: "toLoginVC", sender: self)
        
    }
    
    
    func showAlert(titleInput: String, messageInput:String){
        
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Tamam", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    private func setDelegates(){
        nameTextLabel.delegate = self
        eMailTextLabel.delegate = self
        passwordTextLabel.delegate = self
        rePasswordTextLabel.delegate = self
    }
    
}

extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == nameTextLabel{
            
            eMailTextLabel.becomeFirstResponder()
            
        } else if textField == eMailTextLabel{
            
            passwordTextLabel.becomeFirstResponder()
            
        } else if textField == passwordTextLabel{
            
            rePasswordTextLabel.becomeFirstResponder()
            
        } else {
            
            rePasswordTextLabel.resignFirstResponder()
            
        }
        return true
    }
    
}
