//
//  charaterParser.swift
//  Game of Thrones
//
//  Created by Collins on 28/10/2022.
//


import Foundation
import UIKit

struct housesParser{
    
    
    // Retrieve Data From API
        func parseH(comp : @escaping (House)->()){
        
        print("loading...")
        let api = URL(string: houseString)
        
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
                let result = try JSONDecoder().decode(House.self , from: data!)
                comp((result))
                print("New house")
                print(result)
                 
            } catch {
                print("decoding error...")
                let str = String(decoding: data!, as: UTF8.self)
                print(str)
                print(houseString!)
                alertTitleGlobal = "JSON decoding error"
                alertMessageGlobal = "Please check your internet connection"
                selfController.showAlert(alertText: alertTitleGlobal, alertMessage: alertMessageGlobal)
                alertOptionGlobal = "Retry"
                
            }
        }.resume()
        
    }
    
}
