//
//  ServicesViewController.swift
//  Boatelligent
//
//  Created by Austin Potts on 10/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var serviceCollectionView: UICollectionView!
    
     let partController = PartController()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        serviceCollectionView.delegate = self
        serviceCollectionView.dataSource = self
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
              // #warning Incomplete implementation, return the number of sections
              return 1
          }
       
       func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
           return partController.part.count
       }
       
       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PartCell", for: indexPath) as? PartCollectionViewCell else {return UICollectionViewCell()}
           
               // Configure the cell
               let part = partController.part[indexPath.item]
               cell.parts = part
               return cell
       }
       
       override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "ViewCalendarSegue" {
           guard let indexPath = serviceCollectionView.indexPathsForSelectedItems?.first?.item,
               let partSelectVC = segue.destination as? PartViewViewController else{return}
           
           let selectedPart = partController.part[indexPath]
           partSelectVC.part = selectedPart
           
       }
    }
    
    
    
    
    

}




    
    

