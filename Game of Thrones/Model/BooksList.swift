//
//  BooksList.swift
//  Game of Thrones
//
//  Created by Collins on 14/11/2022.
//

import Foundation

struct Books {
    let url: String
    let name, isbn: String
    let authors: [String]
    let numberOfPages: Int
    let publisher, country, mediaType, released: String
    let characters, povCharacters: [String]
}
