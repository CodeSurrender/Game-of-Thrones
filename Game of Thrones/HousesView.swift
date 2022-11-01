//
//  ViewController.swift
//  Game of Thrones
//
//  Created by Collins on 28/10/2022.
//

import UIKit
import Foundation



class HousesView: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    var houses : House?
    let parserc = CharacterParser()
    let parserh = housesParser()

        private var myTableView = UITableView()

        override func viewDidLoad() {
            super.viewDidLoad()
            let displayWidth: CGFloat = self.view.frame.width
            let displayHeight: CGFloat = self.view.frame.height

            let viewTitle = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 80))
            viewTitle.text = "     Game of Thrones House"
            viewTitle.font = UIFont.boldSystemFont(ofSize: 17)
            viewTitle.backgroundColor = .black
            viewTitle.textColor = .white
            viewTitle.textAlignment = .left
            self.view.addSubview(viewTitle)
            
            
            let closeView = UIButton(frame: CGRect(x: self.view.frame.width - 80, y: 0, width: 70, height: 80))
            closeView.setTitle("Close", for: .normal)
            closeView.titleLabel?.font = UIFont.boldSystemFont(ofSize: 15)
            closeView.addTarget(self, action: #selector(pressed), for: .touchUpInside)
            closeView.titleLabel?.textAlignment = .center
            self.view.addSubview(closeView)
             
            
            myTableView = UITableView(frame: CGRect(x: 0, y: 80, width: displayWidth, height: displayHeight - 80))
            myTableView.register(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
            myTableView.dataSource = self
            myTableView.delegate = self
            myTableView.rowHeight = 110.0
            self.view.addSubview(myTableView)

            parserh.parseH{datax in
                self.houses = datax
                DispatchQueue.main.sync {
                    self.myTableView.reloadData()
                    print("BullyX")
               //     self.myActivityIndicator.stopAnimating()
                }
            }
        }
    
   @objc func pressed() {
       self.dismiss(animated: true, completion: nil)
    }
   
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 1
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = nasaMedia(frame: CGRect(x: 0,y: 0,width: self.view.frame.width,height: 100), title: "nasaMedia")
            
            DispatchQueue.main.async {
                cell.nameLabel.text = (String(describing: self.houses!.name) == "") ? "Unknown Character" : String(describing: self.houses!.name)
                cell.genderLabel.text = (String(describing: self.houses!.region) == "") ? "Gender Unknown" : String(describing: self.houses!.region)
                cell.cultureLabel.text = (String(describing: self.houses!.coatOfArms) == "") ? "Culture Unknown" : String(describing: self.houses!.coatOfArms)
                cell.bornLabel.text = (String(describing: self.houses!.words) == "") ? "Unknown date of birth" : String(describing: self.houses!.words)
            }
            return cell
            
        }
}

