//
//  ViewController.swift
//  Game of Thrones
//
//  Created by Collins on 28/10/2022.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    var characters = [Character]()
    let parserc = CharacterParser()

         var myTableView = UITableView()

        override func viewDidLoad() {
            super.viewDidLoad()
            
            let displayWidth: CGFloat = self.view.frame.width
            let displayHeight: CGFloat = self.view.frame.height

            let viewTitle = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 70))
            viewTitle.text = "Game of Thrones Characters"
            viewTitle.font = UIFont.boldSystemFont(ofSize: 20)
            viewTitle.backgroundColor = .black
            viewTitle.textColor = .white
            viewTitle.textAlignment = .center
            self.view.addSubview(viewTitle)

            myTableView = UITableView(frame: CGRect(x: 0, y: 70, width: displayWidth, height: displayHeight - 70))
            myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
            myTableView.dataSource = self
            myTableView.delegate = self
            myTableView.rowHeight = 190.0
            self.view.addSubview(myTableView)

            parserc.parse{datax in
                self.characters = datax
                DispatchQueue.main.sync {
                    self.myTableView.reloadData()
                }
            }
        }
    
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let destination = HousesView()
            print("Num: \(indexPath.row)")
            print("Value: \(characters[indexPath.row])")
            destination.modalPresentationStyle = .fullScreen
            let housesCount = characters[indexPath.row].allegiances.count
            if housesCount > 0 {
            houseString = (String(describing: characters[indexPath.row].allegiances[0]) == "") ? "" : String(describing: characters[indexPath.row].allegiances[0])
            self.present(destination, animated: true, completion: nil)
            }
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return characters.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = nasaMedia(frame: CGRect(x: 0,y: 0,width: self.view.frame.width,height: 100), title: "nasaMedia")
            cell.nameLabel.text = (String(describing: characters[indexPath.row].name) == "") ? "Unknown Character" : String(describing: characters[indexPath.row].name)
            cell.genderLabel.text = (String(describing: characters[indexPath.row].gender) == "") ? "Gender Unknown" : String(describing: characters[indexPath.row].gender)
            cell.cultureLabel.text = (String(describing: characters[indexPath.row].culture) == "") ? "Culture Unknown" : String(describing: characters[indexPath.row].culture)
            cell.bornLabel.text = (String(describing: characters[indexPath.row].born) == "") ? "Unknown date of birth" : String(describing: characters[indexPath.row].born)
            cell.diedLabel.text = (String(describing: characters[indexPath.row].died) == "") ? "Unknown date of death" : String(describing: characters[indexPath.row].died)
            cell.fatherLabel.text = (String(describing: characters[indexPath.row].father) == "") ? "Father Unknown" : String(describing: characters[indexPath.row].father)
            cell.motherLabel.text = (String(describing: characters[indexPath.row].mother) == "") ? "Mother Unknown" : String(describing: characters[indexPath.row].mother)
            cell.spouseLabel.text = (String(describing: characters[indexPath.row].spouse) == "") ? "Spouse Unknown" : String(describing: characters[indexPath.row].spouse)
            return cell
            
        }
}

