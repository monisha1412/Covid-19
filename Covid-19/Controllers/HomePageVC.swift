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
//        performSegue(withIdentifier: "HomePageToMainPage", sender: self)
        let statesVC = utilizeViewController(boardId: "Main", identifier: "ContriesVC") as! ContriesVC
        navigationController?.pushViewController(statesVC, animated: true)
    }
    @IBAction func countriesBtnAction(_ sender: UIButton) {
        let statesVC = utilizeViewController(boardId: "Main", identifier: "ContriesVC") as! ContriesVC
        navigationController?.pushViewController(statesVC, animated: true)
    }
}

extension UIViewController {
    
    func utilizeViewController(boardId:String, identifier:String) -> UIViewController {
        let board = UIStoryboard(name: boardId, bundle: nil)
        let viewController = board.instantiateViewController(withIdentifier: identifier)
        return viewController
    }
    
}
