//
//  photoViewController.swift
//  game
//
//  Created by Александр on 13.08.17.
//  Copyright © 2017 Александр. All rights reserved.
//

import UIKit

class photoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var destinationPhotoTwo : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(photoViewController.backs))
        photoImageView.addGestureRecognizer(tap)
        photoImageView.isUserInteractionEnabled = true
        photoImageView.image = UIImage(named: destinationPhotoTwo)
        print("Фото - \(destinationPhotoTwo)")
    }
    
    func backs(){
        self.dismiss(animated: true, completion: nil)
    }
}
