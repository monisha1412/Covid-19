//
//  CustomTableViewVC.swift
//  Covid-19
//
//  Created by monica s b on 23/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import UIKit

class CustomTableViewVC: UIViewController {
    
    @IBOutlet weak var selectFruitBtn: UIButton!
    @IBOutlet weak var listOfFruitTV: UITableView!
    var listOfFruit = ["Banana","Straberry","Mango","Grapes"]
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfFruitTV.isHidden = true
    }
    @IBAction func selectFruitBtnAction(_ sender: UIButton) {
        if listOfFruitTV.isHidden {
            animationEffect(toggle: true)
        } else {
            animationEffect(toggle: false)
        }
    }
    func animationEffect(toggle: Bool){
        if toggle {
            UIView.animate(withDuration: 0.3) {
                self.listOfFruitTV.isHidden = false
            }
        } else {
            UIView.animate(withDuration: 0.3) {
                self.listOfFruitTV.isHidden = true
            }
        }
    }
    
}
extension CustomTableViewVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfFruit.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTVCell", for: indexPath) as! CustomTVCell
        cell.textLabel?.text = listOfFruit[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectFruitBtn.setTitle(listOfFruit[indexPath.row], for: .normal)
        animationEffect(toggle: false)
    }
    
}
