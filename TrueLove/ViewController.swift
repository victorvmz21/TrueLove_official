//
//  ViewController.swift
//  TrueLove
//
//  Created by Victor Monteiro on 9/8/18.
//  Copyright © 2018 Atomuz Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var myNameField: HoshiTextField!
    @IBOutlet weak var crushNameFiled: HoshiTextField!
    @IBOutlet weak var goButton: UIButton!
    
    //MARK: View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.backBarButtonItem?.tintColor = UIColor.white
        self.crushNameFiled.delegate = self
        self.myNameField.delegate = self
    
     }
    
    //MARK: Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //MARK: Actions
    @IBAction func checkButton(_ sender: UIButton) {
        if (myNameField.text?.isEmpty)! || (crushNameFiled.text?.isEmpty)!{
            let alert = UIAlertController(title: "Atention", message: "Fields were filled wrong", preferredStyle: .alert)
            let ok = UIAlertAction(title: "OK", style: .default) { (ok) in
                NSLog("User Pressed ok")
            }
            alert.addAction(ok)
            self.present(alert, animated: true, completion: nil)
        }
    }

    
    //MARK: Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cellCrush" {
            if let sendingData = segue.destination as? ResultViewController {
                sendingData.ownNameRecovered = myNameField.text!
                sendingData.crushNameRecovered = crushNameFiled.text!
             }
        }
    }
  
}
//MARK: Extensions
extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.crushNameFiled.becomeFirstResponder()
        if self.crushNameFiled.becomeFirstResponder() == true {
            textField.resignFirstResponder()
        }
        return true
    }
    
    
    
    
}




