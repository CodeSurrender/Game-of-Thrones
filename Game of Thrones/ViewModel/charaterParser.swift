//
//  charaterParser.swift
//  Game of Thrones
//
//  Created by Collins on 28/10/2022.
//


import Foundation
import UIKit

struct CharacterParser{
    
    
    // Retrieve Data From API
        func parse(comp : @escaping ([Character])->()){
        
        print("loading...")
        let api = URL(string: "https://anapioficeandfire.com/api/characters")
        
        URLSession.shared.dataTask(with: api!){
            data, response, error in
            
    //Error Checking
            if error != nil{
                
                alertTitleGlobal = "Connection error"
                alertMessageGlobal = "Please check your internet connection or link"
                selfController.showAlert(alertText: alertTitleGlobal, alertMessage: alertMessageGlobal)
                alertOptionGlobal = "Retry"
                print(error?.localizedDescription as Any)
                return

            }
    //JSON Decoding
            do {
                let result = try JSONDecoder().decode([Character].self , from: data!)
                comp(result)
                print(result)
        
                 
            } catch {
                print("decoding error...")
                
                alertTitleGlobal = "JSON decoding error"
                alertMessageGlobal = "Please check your internet connection"
                selfController.showAlert(alertText: alertTitleGlobal, alertMessage: alertMessageGlobal)
                alertOptionGlobal = "Retry"
                
            }
        }.resume()
        
    }
    
}
