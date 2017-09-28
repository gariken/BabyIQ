//
//  collectionViewController.swift
//  game
//
//  Created by Александр on 12.08.17.
//  Copyright © 2017 Александр. All rights reserved.
//

import UIKit

class collectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var destination : [String] = [""]
    var destinationPhoto : [String] = []

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        for mas in destination{
            let summa = ("\(mas)"+"_1")
            destinationPhoto.append(summa)
        }
        print("\(destinationPhoto)")
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return destination.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "theCell", for: indexPath) as! CollectionViewCell
        cell.imageCollection.image = UIImage(named: destination[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        dataPhoto(tDataPhoto: destinationPhoto[indexPath.row])
    }
    
    
    //MARK: HeaderView
    func collectionView(_ collectionView: UICollectionView,viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
            case UICollectionElementKindSectionHeader:
                let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind,withReuseIdentifier: "HEADER", for: indexPath) as! headerReusableView
                headerView.arrowBack.addTarget(self, action: #selector(collectionViewController.backs), for: .touchUpInside)
                return headerView
        default:
            assert(false, "Unexpected element kind")
        }
    }
    
    func dataPhoto(tDataPhoto: String){
        let vc = storyboard?.instantiateViewController(withIdentifier: "PHOTO_VIEW") as! photoViewController
        vc.destinationPhotoTwo = tDataPhoto
        self.present(vc, animated: true, completion: nil)
    }
    
    func backs(){
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
