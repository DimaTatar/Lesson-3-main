//
//  ViewController.swift
//  Lesson 3
//
//  Created by Дмитрий Татаринцев on 26.10.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var userName: UITextField!
    @IBOutlet var passfordName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    @IBAction func actionButton(_ sender: UIButton) {
        if userName.text == "User" && passfordName.text == "Passford"{
            userName.text = "User"
            passfordName.text = "Passford"
           
        } else if  passfordName.text != "Passford" {
        self.alert(title: "Invalid login or passford", message: "Please, enter correct login and passford", style: .alert)
            passfordName.text?.removeAll()
            } else {
            self.alert(title: "Invalid login or passford", message: "Please, enter correct login and passford", style: .alert)
        }
    }
    
    @IBAction func rightName() {
        self.alert(title: "Ooops!", message: "Your name is User😉", style: .alert)
        
    }
    @IBAction func rightPassford() {
        self.alert(title: "Ooops!", message: "Your passford is Passford😉", style: .alert)
    
    }
    
    @IBAction  func unwind(for segue: UIStoryboardSegue) {
        userName.text?.removeAll()
        passfordName.text?.removeAll()
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
    }
    func alert(title: String, message: String, style: UIAlertController.Style) {
        let allertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let action = UIAlertAction(title: "Ok", style: .default)
        allertController.addAction(action)
        self.present(allertController,animated: true,completion: nil)
    }
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeViewController = segue.destination as? WelcomeViewController else {return}
        welcomeViewController.nameLabel += userName.text ?? "Error"
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switch textField {
        case userName:
            passfordName.becomeFirstResponder()
        default:
            passfordName.resignFirstResponder()
            
        }
        return true
    }
       
   


}
