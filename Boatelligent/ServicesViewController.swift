//
//  ServicesViewController.swift
//  Boatelligent
//
//  Created by Austin Potts on 10/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

struct CustomData{
    var title: String
    var image: UIImage
    var url: String
}

class ServicesViewController: UIViewController {

    @IBOutlet weak var serviceCollectionView: UICollectionView!
    
     let partController = PartController()
    
    let data = [
            CustomData(title: "Idk", image: #imageLiteral(resourceName: "Engine2"), url: "part"),
            CustomData(title: "Idk", image: #imageLiteral(resourceName: "OilChange"), url: "part"),
            CustomData(title: "Idk", image: #imageLiteral(resourceName: "Gear2"), url: "part"),
            CustomData(title: "Idk", image: #imageLiteral(resourceName: "Lights"), url: "part"),
            CustomData(title: "Idk", image: #imageLiteral(resourceName: "Saw2"), url: "part"),
            CustomData(title: "Idk", image: #imageLiteral(resourceName: "Anchor"), url: "part"),
            CustomData(title: "Idk", image: #imageLiteral(resourceName: "Time"), url: "part"),
            CustomData(title: "Idk", image: #imageLiteral(resourceName: "SharpKnife"), url: "part"),
            CustomData(title: "Idk", image: #imageLiteral(resourceName: "Cut"), url: "part"),
            CustomData(title: "Idk", image: #imageLiteral(resourceName: "Gadget"), url: "part"),
            
            
            ]
    
   
    fileprivate let collectionView: UICollectionView = {
         let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
         let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
         cv.translatesAutoresizingMaskIntoConstraints = false
         cv.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
         return cv
     }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(collectionView)
        collectionView.backgroundColor = .clear
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 245).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -0).isActive = true
        
//        collectionView.heightAnchor.constraint(equalTo: collectionView.widthAnchor, multiplier: 0.5).isActive = true
//
        collectionView.delegate = self
        collectionView.dataSource = self //Methods wont run if these arent called 
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




extension ServicesViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.1, height: collectionView.frame.width/2)
       }
       
     
       func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
       }
        
      
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
             let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
            
                // Configure the cell
               // let part = partController.part[indexPath.item]
         cell.data = self.data[indexPath.row]
                return cell
        }
        
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "ViewCalendarSegue" {
//            guard let indexPath = collectionView.indexPathsForSelectedItems?.first?.item,
//                let partSelectVC = segue.destination as? ScheduleServiceViewController else{return}
//
//            let selectedPart = partController.part[indexPath]
//            partSelectVC.part = selectedPart
//
//        }
//
//     }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ViewCalendarSegue", sender: indexPath)
    }
    
    
    
}

class CustomCell: UICollectionViewCell {
    
    var data: CustomData? {
        didSet{
            guard let data = data else {return}
            bg.image = data.image
        }
    }
    
    fileprivate let bg: UIImageView = {
        let iv = UIImageView()
        iv.image = #imageLiteral(resourceName: "part2")
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 15
        
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(bg)
        bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bg.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        bg.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}




    
    

