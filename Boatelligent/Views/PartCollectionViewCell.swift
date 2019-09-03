//
//  PartCollectionViewCell.swift
//  Boatelligent
//
//  Created by Austin Potts on 8/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PartCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var partNameLabel: UILabel!
    @IBOutlet weak var partImage: UIImageView!
    
    @IBAction func addPartTapped(_ sender: Any) {
    }
    var parts: Part?{
        didSet{
            updateViews()
        }
    }
    private func updateViews(){
        guard let parts = parts else{return}
        partImage.image = parts.image
        partNameLabel.text = parts.name
    }
    
}
