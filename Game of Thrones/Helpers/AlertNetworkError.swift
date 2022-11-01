//
//  AlertNetworkError.swift
//  Game of Thrones
//
//  Created by Collins on 28/10/2022.
//

import Foundation
import UIKit


//Alert displayer
var selfController = UIViewController()
var descriptionGlobal = String()
var titleGlobal = String()
var imageGlobal = String()
var alertTitleGlobal = String()
var alertMessageGlobal = String()
var alertOptionGlobal = String()
var errorCheck = 0
var apiData = [Character]()
var nasaNameText = String()
let parser = CharacterParser()


extension UIViewController {
    //Show a basic alert
    func showAlert(alertText : String, alertMessage : String) {
        let alert = UIAlertController(title: alertText, message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Retry", style: UIAlertAction.Style.default, handler: {
        (alert: UIAlertAction!) in
            print("error")
            selfController.viewDidLoad()
        }))
        //Add more actions as you see fit
        self.present(alert, animated: true, completion: nil)
    }
}
