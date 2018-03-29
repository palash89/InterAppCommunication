//
//  ViewController.swift
//  SourceApp
//
//  Created by Palash Das on 24/03/18.
//  Copyright © 2018 Palash Das. All rights reserved.
//

import UIKit

extension CharacterSet {
    static let urlAllowed = CharacterSet.urlFragmentAllowed
        .union(.urlHostAllowed)
        .union(.urlPasswordAllowed)
        .union(.urlQueryAllowed)
        .union(.urlUserAllowed)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnOpenAppPressed(_ sender:UIButton){
        
        let strURL = "targetapp://x-callback-url/translate?x-success=sourceapp://x-callback-url/acceptTranslation&x-source=SourceApp&x-error=sourceapp://x-callback-url/translationError&word=Hello"
        
        //let escapedURLString = strURL.addingPercentEncoding( withAllowedCharacters: .urlAllowed)
        
        let url = URL.init(string: strURL)
        
        if (UIApplication.shared.canOpenURL(url!)){
            
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }
    }
    


}

