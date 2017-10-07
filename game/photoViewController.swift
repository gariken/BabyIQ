//
//  photoViewController.swift
//  game
//
//  Created by Александр on 13.08.17.
//  Copyright © 2017 Александр. All rights reserved.
//

import UIKit
import AVFoundation

var player : AVAudioPlayer?

class photoViewController: UIViewController {

    @IBOutlet weak var photoImageView: UIImageView!
    
    var destinationPhotoTwo : String = ""
    var destionationAudio : String = ""
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(photoViewController.backs))
        photoImageView.addGestureRecognizer(tap)
        photoImageView.isUserInteractionEnabled = true
        photoImageView.image = UIImage(named: destinationPhotoTwo)
        print("Фото - \(destinationPhotoTwo)")
        timers()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    func backs(){
        self.dismiss(animated: true, completion: nil)
    }
    
    func timers(){
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(self.playSound), userInfo: nil, repeats: true)
    }
    
    func playSound() {
        let url = Bundle.main.url(forResource: destinationPhotoTwo, withExtension: "mp3")!
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            timer.invalidate()
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
    }
}
