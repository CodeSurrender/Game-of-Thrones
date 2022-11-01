//
//  characterList.swift
//  Game of Thrones
//
//  Created by Collins on 28/10/2022.
//

import Foundation

struct Character : Codable {
    
    let url : String
    let name : String
    let gender : String
    let culture : String
    let born : String
    let died : String
    let titles : [String]
    let aliases : [String]
    let father : String
    let mother : String
    let spouse : String
    let allegiances : [String]
    let books : [String]
    let povBooks : [String]
    let tvSeries : [String]
    let playedBy : [String]

}


