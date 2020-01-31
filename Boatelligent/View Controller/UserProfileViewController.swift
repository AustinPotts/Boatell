//
//  UserProfileViewController.swift
//  Boatelligent
//
//  Created by Austin Potts on 1/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {

    @IBOutlet weak var userImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        userImage.layer.masksToBounds = true
        userImage.layer.cornerRadius = userImage.bounds.width / 2
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
