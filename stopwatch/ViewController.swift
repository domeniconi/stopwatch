//
//  ViewController.swift
//  stopwatch
//
//  Created by Nicolas Domeniconi on 08/09/2014.
//  Copyright (c) 2014 domeniconi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    var count: Float = 0.0
    var inProgress = false
    var seconds = ""
    var miliseconds = ""
    var minutes = ""
    
    @IBOutlet  var clockLabel: UILabel!
    
    @IBAction func tapPlay(sender: AnyObject) {
        
        if(!inProgress)
        {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        }
        
        inProgress = true
        
    }
    
    @IBAction func tapPause(sender: AnyObject) {
        
        timer.invalidate()
        inProgress = false
        
    }
    
    @IBAction func tapReset(sender: AnyObject) {
        
        timer.invalidate()
        count = 0.0
        clockLabel.text = "\(count)"
        inProgress = false
        
        
    }
    
    func result() {
        count++
        clockLabel.text = "\(count)"
        //Calculate Seconds
        seconds = count
        
        //Calculate Miliseconds
        
        
        //Calculate Minutes
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

