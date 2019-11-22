//
//  ActivitiesViewController.swift
//  iSwift
//
//  Created by Manuel Alejandro Aguilar Tellez Giron on 22/11/19.
//  Copyright © 2019 Manuel Alejandro Aguilar Tellez Giron. All rights reserved.
//

import UIKit

struct Activity {
    var imageTitle: String
    var title: String
    var instructor: String
    var time = Calendar.current.component(.hour, from: Date())
    var date = Calendar.current.component(.day, from: Date())
}

class ActivitiesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var clubsCollection: UICollectionView!
    
    var items = [
        Activity(imageTitle: "1", title: "lknwlkcnlkwc", instructor: "ñwdkmnvñkem"),
        Activity(imageTitle: "1", title: "veflvneflpjdv", instructor: "dvielv"),
        Activity(imageTitle: "1", title: "elvnleknndwlk", instructor: "dwcnwlkc")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let flowLayout = UICollectionViewFlowLayout()
        //let activityCell = UINib(nibName: "ActivityCell", bundle: Bundle.main)
        clubsCollection.register(UINib(nibName: "ActivityCell", bundle: nil), forCellWithReuseIdentifier: "clubCell")
        clubsCollection.delegate = self
        clubsCollection.dataSource = self
        
        clubsCollection.showsHorizontalScrollIndicator = false
        
    }
    
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "clubCell", for: indexPath) as! ActivityCollectionViewCell
        cell.backgroundColor = UIColor.green
        cell.courseTitle.text = items[indexPath.item].title
        cell.courseImage.image = UIImage(named: items[indexPath.item].imageTitle)
        cell.instructorName.text = items[indexPath.item].instructor
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: view.frame.width - 50 , height: view.frame.height - 20)
    }

}
