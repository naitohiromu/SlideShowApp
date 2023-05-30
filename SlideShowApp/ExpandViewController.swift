//
//  ExpandViewController.swift
//  SlideShowApp
//
//  Created by naito.hiromu on 2023/05/29.
//

import UIKit

class ExpandViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    
    var expandImage:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let sampleImage = UIImage(named:expandImage)
        image.image = sampleImage
        // Do any additional setup after loading the view.
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
