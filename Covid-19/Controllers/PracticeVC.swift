//
//  PracticeVC.swift
//  Covid-19
//
//  Created by monica s b on 21/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import UIKit
import Foundation

class PracticeVC: UIViewController {

    var dataOfPractice :PracticeModelClass?
    
    var jsonData : [String:Any] = [:]
    var dataOfJson : GetFunctionality?
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        postAction()
        httpGetRequest()
//        getFunction()
    }
    
    func willGetAcedamicData()  {
        if let academic = jsonData["Address"] as? [String:Any] {
            print("#######", academic.count)
        
        }
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
                    if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                        self.jsonData = json
                        print("Prinitng the JSON:", self.jsonData)
                        if let name = self.jsonData["FirstName"] as? String {
                            print("printing the first name: ",  name)
                        }
                        self.willGetAcedamicData()
                    }

                } catch {
                    print(error)
                }
            }
            }.resume()
    }
    
    
    func getFunction() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else { return }
        let session = URLSession.shared
        session.dataTask(with: url) { (data, response, error) in
            if let response = response {
                print(response)
            }
            if let data = data {
                print(data)
                do {
                    let json = try JSONSerialization.jsonObject(with: data, options: []) as? [[String:Any]]
                    print(json)
                    if json != nil {
                    }
                    
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
    
    private func httpGetRequest() {
        
        let url:NSURL = NSURL(string: "https://api.themoviedb.org/3/discover/movie?language=en&sort_by=popularity.desc&page=1&api_key=42788eda62b217f05c5e4879fe078b33")! //change the url
        let session = URLSession.shared
        let request = URLRequest(url: url as URL)
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            guard error == nil else {
                return
            }
            guard let data = data else {
                return
            }
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    
                    print(json)
//                    let practiceModel = GetFunctionality.init(dict: json)
                    self.dataOfJson = GetFunctionality.init(dict: json)
                    print("printing ######", self.dataOfJson)
                }
            } catch let error {
                print(error.localizedDescription)
            }
        })
        task.resume()
    }
}
