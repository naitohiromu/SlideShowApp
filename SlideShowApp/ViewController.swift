//
//  ViewController.swift
//  SlideShowApp
//
//  Created by naito.hiromu on 2023/05/29.
//

import UIKit

class ViewController: UIViewController {
    var wall_image: Array<String> = ["Iwindowsxp_wallpaper","Windows-Vista_R","Windows7","windows8_tips"]
    var current_view:Int = 0
    var progress_slide:Int = 0
    @IBOutlet weak var image: UIImageView!
    
    // タイマー
    var timer: Timer!
    // タイマー用の時間のための変数
    var timer_sec: Float = 0
    
    @IBAction func unwind(_ segue:UIStoryboardSegue) {
    }
    
    @IBAction func tapImage(_ sender: Any) {
        //let expandViewController:ExpandViewController =
        print("タップ")
    }
    /*
    @IBAction func tapImage(for segue:UIStoryboardSegue, sender: Any?) {
        //let expandViewController:ExpandViewController = segue.destination as! ExpandViewController
        print("タップ")
        //expandViewController.expandImage = wall_image[current_view]
        print(wall_image[current_view])
    }
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let sampleImage = UIImage(named:wall_image[current_view])
        image.image = sampleImage
    }
    
    @IBAction func next_button(_ sender: Any) {
        if(progress_slide == 0){
            current_view+=1
            if(current_view == 4){
                current_view = 0
            }
            image.image = UIImage(named:wall_image[current_view])
        }
    }
    @IBAction func prev_button(_ sender: Any) {
        if(progress_slide == 0){
            current_view-=1
            if(current_view == -1){
                current_view = 3
            }
            image.image = UIImage(named:wall_image[current_view])
        }
    }
    @IBAction func startstop_button(_ sender: Any) {
        // 動作中のタイマーを1つに保つために、 timer が存在しない場合だけ、タイマーを生成して動作させる
    
        if self.timer == nil {
            progress_slide = 1
            self.timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            print("start")
            
        }
        else if(self.timer != nil){
            progress_slide = 0
            self.timer.invalidate()   // タイマーを停止する
            self.timer = nil          // startTimer() の self.timer == nil で判断するために、 self.timer = nil としておく
            print("stop")
        }
    }
    @objc func updateTimer(_ timer: Timer) {
        self.timer_sec += 0.1
        if(self.timer_sec >= 2){
            self.timer_sec -= 2
            current_view+=1
            if(current_view == 4){
                current_view = 0
            }
            image.image = UIImage(named:wall_image[current_view])
        }
    }
    
}
