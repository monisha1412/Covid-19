//
//  CountryStateCities.swift
//  AssignmentProject
//
//  Created by monica s b on 16/04/20.
//  Copyright © 2020 monica s b. All rights reserved.
//

import Foundation

import Foundation

struct CountryStateCities : Codable {
    
    let  countries : [Country]?
    
    enum CodingKeys: String, CodingKey {
        case countries = "Countries"
    }
    
    
}
struct Country : Codable {
    
    let countryName : String?
    let states : [State]?
    
    enum CodingKeys: String, CodingKey {
        case countryName = "CountryName"
        case states = "States"
    }
    
}

struct State : Codable {
    
    let cities : [String]?
    let stateName : String?
    
    enum CodingKeys: String, CodingKey {
        case cities = "Cities"
        case stateName = "StateName"
    }
   
    
}
