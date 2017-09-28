//
//  ViewController.swift
//  game
//
//  Created by Александр on 08.08.17.
//  Copyright © 2017 Александр. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func Animals(_ sender: Any) {
        
    }

    @IBAction func vegetables(_ sender: Any) {
        theData(tData: Sections().insects)
    }
    
    @IBAction func fruits(_ sender: Any) {
        theData(tData: Sections().fruits)
    }
    
    @IBAction func music(_ sender: Any) {
        theData(tData: Sections().music )
    }
    
    @IBAction func clothes(_ sender: Any) {
        
    }
    
    @IBAction func profession(_ sender: Any) {
        
    }
    
    func theData(tData : [String]){
        let vc = storyboard?.instantiateViewController(withIdentifier: "COLLECTION") as! collectionViewController
        vc.destination = tData
        self.present(vc, animated: true, completion: nil)
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    

}

