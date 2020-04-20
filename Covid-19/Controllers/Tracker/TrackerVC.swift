//
//  TrackerVC.swift
//  Covid-19
//
//  Created by monica s b on 13/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import UIKit

class TrackerVC: UIViewController {

    @IBOutlet weak var trackerTableView: UITableView!
    
//    var dataOfCorona : Corona?

    override func viewDidLoad() {
        super.viewDidLoad()
//        infoOfVirus()

    }
//    func infoOfVirus()  {
//
//        guard let fileName = Bundle.main.path(forResource: "package", ofType: "json") else {
//            return
//        }
//        let optionalData = try? Data(contentsOf: URL(fileURLWithPath:fileName ))
//        guard let data = optionalData else { return }
//
//        let decoder = JSONDecoder()
//        if  let launch = try? decoder.decode(Corona.self, from: data){
//            print("$$$$$$$$$", launch)
//            dataOfCorona = launch
//
//        }
//    }
}
extension TrackerVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = trackerTableView.dequeueReusableCell(withIdentifier: "TrackerTVCell", for: indexPath) as! TrackerTVCell
    cell.completeView.backgroundColor = #colorLiteral(red: 0.8533111215, green: 0.9371491075, blue: 0.7189595699, alpha: 1)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }
}




//        if let infoCorona = json as? [String: Any] {
//            print("##########", infoCorona.count)
//            if let homepage = infoCorona["homepage"] as? String{
//                print("printing the value of HomePage: ",homepage)
//            }
//
//        }
