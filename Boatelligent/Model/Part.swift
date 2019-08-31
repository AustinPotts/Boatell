//
//  Part.swift
//  Boatelligent
//
//  Created by Austin Potts on 8/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import UIKit


class Part {
    
    var name: String
    var price: String
    var image: UIImage
    
    init(name: String, price: String, imageName: String) {
        self.image = UIImage(named: imageName)!
        self.name = name
        self.price = price
    }
    
}
