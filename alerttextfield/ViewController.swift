//
//  ViewController.swift
//  alerttextfield
//
//  Created by owner on 6/28/17.
//  Copyright © 2017 owner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var usrtextfield : UITextField?
    var pswtextfield : UITextField?

    @IBAction func displayalert(_ sender: UIButton)
    {
        let alertcontroller = UIAlertController(title:"sign IN", message:"Please sinIN to icloud", preferredStyle: .alert)
        alertcontroller.addTextField(configurationHandler: usrtextfield)
        alertcontroller.addTextField(configurationHandler: pswtextfield)
       let okaction = UIAlertAction(title: "ok", style: .default, handler: self.okhandler)
        let cancleaction = UIAlertAction(title: "cancle", style: .cancel, handler:nil )
        alertcontroller.addAction(okaction)
        alertcontroller.addAction(cancleaction)
       

        self.present(alertcontroller, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func usrtextfield(textfield : UITextField)
    {
        usrtextfield = textfield
        usrtextfield?.placeholder = "example@apple.com"
    }
    func pswtextfield(textfield : UITextField)
    {
        pswtextfield = textfield
        pswtextfield?.placeholder = "password"
        pswtextfield?.isSecureTextEntry = true
    }
    
    func okhandler(alert:UIAlertAction)
    {
        if displayValidationAlert(textEmail: (usrtextfield?.text)!, password: (pswtextfield?.text)!) {
            let SimpleVC = simpleVC()
            SimpleVC.customstng(usrstng: (usrtextfield?.text)!, pswstng: (pswtextfield?.text)!)
            self.navigationController?.pushViewController(SimpleVC, animated:true)
        }
        
    }
    
    func displayValidationAlert(textEmail: String, password: String) -> Bool
    {
        if(textEmail.characters.count == 0 || password.characters.count == 0){
    
        let alertcontroller = UIAlertController(title:"Field Missing", message:"One or more fields are missing!", preferredStyle: .alert)
                let okaction = UIAlertAction(title: "ok", style: .default, handler: nil)
        alertcontroller.addAction(okaction)
        
        self.present(alertcontroller, animated: true)
            return false;
        }else{
            return true;
        }
    }
   
    }
    


