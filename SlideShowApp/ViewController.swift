//
//  ViewController.swift
//  SlideShowApp
//
//  Created by naito.hiromu on 2023/05/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBAction func tapImage(_ sender: Any) {
        print("タップ")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sampleImage = UIImage(named:"Iwindowsxp_wallpaper")
        image.image = sampleImage
    }

}

