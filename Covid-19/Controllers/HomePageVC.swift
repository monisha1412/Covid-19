//
//  HomePageVC.swift
//  Covid-19
//
//  Created by monica s b on 13/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import UIKit

class HomePageVC: UIViewController {

        
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
   
    
    @IBAction func nextBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "HomePageToMainPage", sender: self)
        
    }
}
