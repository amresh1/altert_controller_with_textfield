//
//  simpleVC.swift
//  alerttextfield
//
//  Created by owner on 6/28/17.
//  Copyright © 2017 owner. All rights reserved.
//

import UIKit

class simpleVC: UIViewController {

    @IBOutlet weak var userdisplay: UILabel!
    @IBOutlet weak var passdisplay: UILabel!
    
    var usrstng : String?
    var pswstng : String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userdisplay.text = usrstng
        passdisplay.text = pswstng
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func customstng(usrstng:String , pswstng:String)
    {
      self.usrstng = usrstng
        self.pswstng = pswstng
    }
    }



