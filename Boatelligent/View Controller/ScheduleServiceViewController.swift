//
//  ScheduleServiceViewController.swift
//  Boatelligent
//
//  Created by Austin Potts on 8/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import FSCalendar

class ScheduleServiceViewController: UIViewController {

    
//    @IBOutlet weak var serviceDatePicker: UIDatePicker!
//
//
//    @IBAction func scheduleServiceTapped(_ sender: Any) {
//        showAlert()
//    }
    
    fileprivate weak var calendar: FSCalendar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calendar = FSCalendar(frame: CGRect(x: 20, y: 20, width: 320, height: 300))
        calendar.dataSource = self
        calendar.delegate = self
        calendar.register(FSCalendarCell.self, forCellReuseIdentifier: "CELL")
        calendar.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(calendar)
        self.calendar = calendar
        
        calendar.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        calendar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        calendar.heightAnchor.constraint(equalToConstant: 375).isActive = true
        calendar.widthAnchor.constraint(equalToConstant: view.frame.width).isActive = true

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

extension ScheduleServiceViewController: FSCalendarDelegate, FSCalendarDataSource {
//    func calendar(_ calendar: FSCalendar, titleFor date: Date) -> String? {
//        return "America"
//    }
//
//    func calendar(_ calendar: FSCalendar, subtitleFor date: Date) -> String? {
//        return "Rules"
//    }
    
    func calendar(_ calendar: FSCalendar, cellFor date: Date, at position: FSCalendarMonthPosition) -> FSCalendarCell {
        let cell = calendar.dequeueReusableCell(withIdentifier: "CELL", for: date, at: position)
        
        return cell
    }
    
}
