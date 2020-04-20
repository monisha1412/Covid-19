//
//  ContriesVC.swift
//  Covid-19
//
//  Created by monica s b on 17/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import UIKit
import CoreData

class ContriesVC: UIViewController {
    
    @IBOutlet weak var countryTableView: UITableView!
    
    //    var contriesList : [String] = []
    //    var statesList : [String] = []
    
    
    var countriesList : CountryStateCities?
    
    var jsonData: [String:Any] = [:]
    var dbCountries: [Countries] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fileName = Bundle.main.path(forResource: "City", ofType: "json")
        let optionalData = try? Data(contentsOf: URL(fileURLWithPath: fileName ?? ""))
        if let json = try? JSONSerialization.jsonObject(with: optionalData ?? Data()) as? [String:Any]{
            jsonData = json
        }
        
        dbCountries = fetchingTheCountries()
        if dbCountries.isEmpty{
            fetchingCountries()
        }
        
        
//        loadingCountriesAndCities()
        
    }
//
//    func loadingCountriesAndCities() {
//        guard let fileName = Bundle.main.path(forResource: "City", ofType: "json")
//            else { return }
//        let optionalData = try? Data(contentsOf: URL(fileURLWithPath: fileName))
//        guard let data = optionalData
//            else { return }
//        let decoder = JSONDecoder()
//        if  let launch = try? decoder.decode(CountryStateCities.self, from: data){
//            print("$$$$$$$$$", launch)
//        }
//    }
    
    func fetchingCountries() {
        if let countries = jsonData["Countries"] as? [[String:Any]] {
            for nameOfContries in countries {
                let context = CoreDataStack.shared.context
                if let dbCountry = NSEntityDescription.insertNewObject(forEntityName: "Countries", into: context) as? Countries {
                    dbCountry.name = nameOfContries["CountryName"] as? String
                    fetchStates(states: nameOfContries["States"] as? [[String:Any]] ?? [], countriezz:dbCountry)
                    insertRecordsIntoTable(table:"Countries" , Object: dbCountry)
                }
                
            }
            dbCountries = fetchingTheCountries()
            DispatchQueue.main.async {
                self.countryTableView.reloadData()
            }
        }
    }
    
    func fetchStates(states:[[String:Any]],countriezz: Countries){
        for stateObj in states {
            let context = CoreDataStack.shared.context
            if let stateValue = NSEntityDescription.insertNewObject(forEntityName: "States", into: context) as? States {
                stateValue.name = stateObj["StateName"] as? String
                fetchCities(cities: stateObj["Cities"] as? [String] ?? [""], statezz: stateValue)
                countriezz.addToStates(stateValue)
            }
        }
    }
    func fetchCities(cities:[String], statezz: States){
        for cityObj in cities{
            let context = CoreDataStack.shared.context
            if let citiesValue = NSEntityDescription.insertNewObject(forEntityName: "Cities", into: context) as? Cities {
                citiesValue.name = cityObj
                statezz.addToData(citiesValue)
            }
        }
    }
        
        //            let json = try? JSONSerialization.jsonObject(with: data),
        //            let stateCountryCities = json as? [String: Any]
        //            else { return }
        //        print("Printing the jsonData: ",stateCountryCities)
        //
//                if let country = stateCountryCities["Countries"] as? [[String:Any]] {
//                    for nameOfContries in country {
//                        if let countryNames = nameOfContries["CountryName"] as? String {
//                            contriesList.append(countryNames)
//                        }
//                    }
        //            for nameOfStates in country {
        //                if let stateName = nameOfStates["StateName"] as? String {
        //                    statesList.append(stateName)
        //                }
        //            }
        //        }
        
    
}

extension ContriesVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dbCountries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = countryTableView.dequeueReusableCell(withIdentifier: "CountriesTVCell", for: indexPath) as! CountriesTVCell
        cell.countriesLbl.text = dbCountries[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        let statesVC = utilizeViewController(boardId: "Main", identifier: "StateAndCitiesVC") as! StateAndCitiesVC
        statesVC.stateList = dbCountries[indexPath.row].states?.array as? [State] ?? []
        navigationController?.pushViewController(statesVC, animated: true)
        
    }
    
}
