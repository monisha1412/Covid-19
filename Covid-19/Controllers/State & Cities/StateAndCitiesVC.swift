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
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = statesCitiesTV.dequeueReusableCell(withIdentifier: "StateCititesTCCell", for: indexPath) as! StateCititesTCCell
        return cell
    }
    
    
}
