//
//  CharacterCell.swift
//  Game of Thrones
//
//  Created by Collins on 29/10/2022.
//

import Foundation
import UIKit

// Cell class
class nasaMedia: UITableViewCell {
    
    var nameLabel : UILabel!
    var genderLabel : UILabel!
    var cultureLabel : UILabel!
    var bornLabel : UILabel!
    var diedLabel : UILabel!
    var fatherLabel : UILabel!
    var motherLabel : UILabel!
    var spouseLabel : UILabel!

    init(frame: CGRect, title: String) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "nasaDetail")
        
        nameLabel = UILabel(frame: CGRect(x: 30,y: 5,width: 250,height: 25))
        nameLabel.font = UIFont.boldSystemFont(ofSize: 18)
        nameLabel.numberOfLines = 0
        nameLabel.contentMode = .left
        
        genderLabel = UILabel(frame: CGRect(x: 30,y: 30,width: 250,height: 25))
        genderLabel.font = UIFont.systemFont(ofSize: 18)
        genderLabel.numberOfLines = 0
        genderLabel.contentMode = .left
        
        cultureLabel = UILabel(frame: CGRect(x: 30,y: 50,width: 250,height: 25))
        cultureLabel.font = UIFont.systemFont(ofSize: 18)
        cultureLabel.numberOfLines = 0
        cultureLabel.contentMode = .left
        
        bornLabel = UILabel(frame: CGRect(x: 30,y: 70,width: 250,height: 25))
        bornLabel.font = UIFont.systemFont(ofSize: 18)
        bornLabel.numberOfLines = 0
        bornLabel.contentMode = .left
        
        diedLabel = UILabel(frame: CGRect(x: 30,y: 90,width: 250,height: 25))
        diedLabel.font = UIFont.systemFont(ofSize: 18)
        diedLabel.numberOfLines = 0
        diedLabel.contentMode = .left
        
        fatherLabel = UILabel(frame: CGRect(x: 30,y: 110,width: 250,height: 25))
        fatherLabel.font = UIFont.systemFont(ofSize: 18)
        fatherLabel.numberOfLines = 0
        fatherLabel.contentMode = .left
        
        motherLabel = UILabel(frame: CGRect(x: 30,y: 130,width: 250,height: 25))
        motherLabel.font = UIFont.systemFont(ofSize: 18)
        motherLabel.numberOfLines = 0
        motherLabel.contentMode = .left
        
        spouseLabel = UILabel(frame: CGRect(x: 30,y: 150,width: 250,height: 25))
        spouseLabel.font = UIFont.systemFont(ofSize: 18)
        spouseLabel.numberOfLines = 0
        spouseLabel.contentMode = .left

        addSubview(nameLabel)
        addSubview(genderLabel)
        addSubview(cultureLabel)
        addSubview(bornLabel)
        addSubview(diedLabel)
        addSubview(fatherLabel)
        addSubview(motherLabel)
        addSubview(spouseLabel)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
}
