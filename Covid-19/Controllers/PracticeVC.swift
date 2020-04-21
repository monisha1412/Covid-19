//
//  PracticeVC.swift
//  Covid-19
//
//  Created by monica s b on 21/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import UIKit

class PracticeVC: UIViewController {

    var dataOfPractice :PracticeModelClass?
    override func viewDidLoad() {
        super.viewDidLoad()
        postAction()
    }
    
    func postAction() {
        let Url = String(format: "https://apis.examroom.ai/api/CandidateSignIn")
        guard let serviceUrl = URL(string: Url) else { return }
        let param :[String:String] = ["IPAddress": "",
                                      "LoginUserID": "demo@examroom.ai",
                                      "Country": "",
                                      "City": "",
                                      "PostalCode": "",
                                      "LatLon": "",
                                      "LoginPassword": "Examroom15$$",
                                      "State": "",
                                      "IsDesktop": "false"]
        var request = URLRequest(url: serviceUrl)
        request.httpMethod = "POST"
        request.setValue("Application/json", forHTTPHeaderField: "Content-Type")
        guard let httpBody = try? JSONSerialization.data(withJSONObject: param, options: []) else {
            return
        }
        request.httpBody = httpBody
        
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if let response = response {
                print(response)
                
            }
            if let data = data {
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: [])
                    print(json)
                    self.dataOfPractice = json as? PracticeModelClass
                    print("printing the data of dataOfPractice: ",self.dataOfPractice )
                } catch {
                    print(error)
                }
            }
            }.resume()
    }
}
