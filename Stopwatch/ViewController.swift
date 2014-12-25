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
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playButton(sender: AnyObject) {
        var time = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("clock"), userInfo: nil, repeats: true)
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

