//
//  twoViewController.swift
//  game
//
//  Created by Александр on 12.08.17.
//  Copyright © 2017 Александр. All rights reserved.
//

import UIKit

class twoViewController: UIViewController {
    
    @IBAction func Letters(_ sender: Any) {
        theData(tData: Sections().bukvy)
    }
    
    @IBAction func colorsButton(_ sender: Any) {
       theData(tData: Sections().color)
    }
    
    @IBAction func numbers(_ sender: Any) {
        theData(tData: Sections().numbers)
    }
    
    @IBAction func geometry(_ sender: Any) {
        theData(tData: Sections().figures)
    }
    
    @IBAction func transport(_ sender: Any) {
        theData(tData: Sections().transport)
    }
    
    @IBAction func house(_ sender: Any) {
        theData(tData: Sections().house)
    }
    
    @IBAction func vegetables(_ sender: Any) {
        theData(tData: Sections().vegetables)
    }
    
    @IBAction func theDismis(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func theData(tData : [String]){
        let vc = storyboard?.instantiateViewController(withIdentifier: "COLLECTION") as! collectionViewController
        vc.destination = tData
        self.present(vc, animated: true, completion: nil)
    }



}
