//
//  ViewController.swift
//  StopWatchApp
//
//  Created by xxxxx on 2020/06/10.
//  Copyright © 2020 xxxxx. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func update() {
//   print(Date.timeIntervalSinceReferenceDate)
        
    }
    
    @IBAction func startTimer(_ sender: Any) {
        self.startTime = Date.timeIntervalSinceReferenceDate
        Timer.scheduledTimer(timeInterval: 0.01,
                             target: self,
             selector: #selector(self.update),
             userInfo: nil,  repeats: true)
        
    }
    
    @IBAction func stopTimer(_ sender: Any) {
    }
    @IBAction func resetTimer(_ sender: Any) {
    }
}

