//
//  ViewController.swift
//  Stopwatch
//
//  Created by Melvin Nguyen on 12/25/14.
//  Copyright (c) 2014 Melvin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timer: UILabel!
    var clickLimit = 0      //prevents misuse of playButton
    var count = 1
    var time: NSTimer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playButton(sender: AnyObject) {
        if(clickLimit == 0){
            time = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("clock"), userInfo: nil, repeats: true)
            clickLimit++
        }
    }
    
    @IBAction func restartButton(sender: AnyObject) {
        time.invalidate()
        count = 1
        timer.text = "0"
        clickLimit = 0
    }
    @IBAction func pauseButton(sender: AnyObject) {
        time.invalidate()
        clickLimit = 0
    }

    func clock(){
        println(count)
        timer.text = String(count)
        count++
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

