//
//  ScheduleServiceViewController.swift
//  Boatelligent
//
//  Created by Austin Potts on 8/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ScheduleServiceViewController: UIViewController {

    
    @IBOutlet weak var serviceDatePicker: UIDatePicker!
    
  
    @IBAction func scheduleServiceTapped(_ sender: Any) {
        showAlert()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    private func showAlert(){
        let alert = UIAlertController(title: "Your boat service has been scheduled.", message: "Thank You! An email will be sent to you with more information.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
        
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
