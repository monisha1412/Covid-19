//
//  StateAndCitiesVC.swift
//  AssignmentProject
//
//  Created by monica s b on 16/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import UIKit

class StateAndCitiesVC: UIViewController {

    @IBOutlet weak var statesCitiesTV: UITableView!
    var stateList : [State] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
}
extension StateAndCitiesVC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return stateList.count
    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return stateList[section].stateName
//    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
     func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView()
        headerView.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        
        let headerLabel = UILabel(frame: CGRect(x: 15, y: 10, width:tableView.bounds.size.width, height: tableView.bounds.size.height))
        headerLabel.font = UIFont(name: "Cochin-Bold", size: 25)
        headerLabel.textColor = #colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1)
        headerLabel.text = stateList[section].stateName
        headerLabel.sizeToFit()
        headerView.addSubview(headerLabel)
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stateList[section].cities?.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = statesCitiesTV.dequeueReusableCell(withIdentifier: "StateCititesTCCell", for: indexPath) as! StateCititesTCCell
        cell.stateCitiesLbl.text = stateList[indexPath.section].cities?[indexPath.row]
        return cell
    }
    
    
}
