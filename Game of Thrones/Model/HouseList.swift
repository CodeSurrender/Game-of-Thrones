//
//  HouseList.swift
//  Game of Thrones
//
//  Created by Collins on 28/10/2022.
//

import Foundation

var houseString : String!

struct House : Codable {
    let url : String
    let name : String
    let region : String
    let coatOfArms : String
    let words : String
    let titles : [String]
    let seats : [String]
    let currentLord : String
    let heir : String
    let overlord : String
    let founded : String
    let founder : String
    let diedOut : String
    let ancestralWeapons : [String]
    let cadetBranches : [String]
    let swornMembers : [String]

    enum CodingKeys: String, CodingKey {

        case url = "url"
        case name = "name"
        case region = "region"
        case coatOfArms = "coatOfArms"
        case words = "words"
        case titles = "titles"
        case seats = "seats"
        case currentLord = "currentLord"
        case heir = "heir"
        case overlord = "overlord"
        case founded = "founded"
        case founder = "founder"
        case diedOut = "diedOut"
        case ancestralWeapons = "ancestralWeapons"
        case cadetBranches = "cadetBranches"
        case swornMembers = "swornMembers"
    }

}

