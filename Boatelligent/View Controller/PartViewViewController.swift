//
//  PartViewViewController.swift
//  Boatelligent
//
//  Created by Austin Potts on 8/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class PartViewViewController: UIViewController {

    
    
    @IBOutlet weak var partImage: UIImageView!
    @IBOutlet weak var partNameLabel: UILabel!
    @IBOutlet weak var partNumberLabel: UILabel!
    @IBOutlet weak var partPriceLabel: UILabel!
    
    
    
    @IBAction func purchasePartTapped(_ sender: Any) {
    }
    
    var part: Part?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       updateViews()
    }
    
    func updateViews(){
        if let part = part {
            partImage.image = part.image
            partNameLabel.text = part.name
            partPriceLabel.text = part.price
            partNumberLabel.text = part.partNumber
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
