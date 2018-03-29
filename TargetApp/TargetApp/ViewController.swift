//
//  ViewController.swift
//  TargetApp
//
//  Created by Palash Das on 24/03/18.
//  Copyright © 2018 Palash Das. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnBackToSourceAppPressed(_ sender:UIButton){
        
        let strURL = "sourceapp://x-callback-url/acceptTranslation?x-source=TargetApp&word=Hola"
        
        let url = URL.init(string: strURL)
        
        
        if (UIApplication.shared.canOpenURL(url!)){
            
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }
    }
    

}

