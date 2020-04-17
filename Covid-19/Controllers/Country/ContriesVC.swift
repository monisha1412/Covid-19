//
//  ContriesVC.swift
//  Covid-19
//
//  Created by monica s b on 17/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import UIKit

class ContriesVC: UIViewController {
    
    @IBOutlet weak var countryTableView: UITableView!
    
    //    var contriesList : [String] = []
    //    var statesList : [String] = []
    
    
    var countriesList : CountryStateCities?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadingCountriesAndCities()
        
    }
    func loadingCountriesAndCities() {
        
        guard let fileName = Bundle.main.path(forResource: "City", ofType: "json")
            else { return }
        let optionalData = try? Data(contentsOf: URL(fileURLWithPath: fileName))
        guard let data = optionalData
            
            else { return }
        
        let decoder = JSONDecoder()
        if  let launch = try? decoder.decode(CountryStateCities.self, from: data){
            countriesList = launch
            
        }
        
        //            let json = try? JSONSerialization.jsonObject(with: data),
        //            let stateCountryCities = json as? [String: Any]
        //            else { return }
        //        print("Printing the jsonData: ",stateCountryCities)
        //
        //        if let country = stateCountryCities["Countries"] as? [[String:Any]] {
        //            for nameOfContries in country {
        //                if let countryNames = nameOfContries["CountryName"] as? String {
        //                    contriesList.append(countryNames)
        //                }
        //            }
        //            for nameOfStates in country {
        //                if let stateName = nameOfStates["StateName"] as? String {
        //                    statesList.append(stateName)
        //                }
        //            }
        //        }
        
    }
}

extension ContriesVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countriesList?.countries?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = countryTableView.dequeueReusableCell(withIdentifier: "CountriesTVCell", for: indexPath) as! CountriesTVCell
        cell.countriesLbl.text = countriesList?.countries?[indexPath.row].countryName
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let statesVC = utilizeViewController(boardId: "Main", identifier: "StateAndCitiesVC") as! StateAndCitiesVC
        statesVC.stateList = countriesList?.countries?[indexPath.row].states ?? []
        navigationController?.pushViewController(statesVC, animated: true)
        
    }
    
}
