//
//  ViewController.swift
//  Tap!
//
//  Created by milou Tanaka on 2017/11/17.
//  Copyright © 2017年 Milou Tanaka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var numberlabel: UILabel!
    @IBOutlet var tapbutton: UIButton!
    
    
    var timer : Timer = Timer()
    var count : Float = 10.00
    var tap : Int = 0
    var resultlabel : String = ""
    var tapkaisuu : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer =  Timer.scheduledTimer(
            timeInterval: 0.01,
            target: self,
            selector: #selector(self.down),
            userInfo: nil,
            repeats: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @objc func down() {
        if count > 0 {
            count = count - 0.01
            numberlabel.text = String(format: "%.2f",  count)
        }else if count  <  0 {
                timer.invalidate()
            performSegue(withIdentifier: "nextSegue", sender: nil)
        }
    }
    
    @IBAction func add() {
        tapkaisuu = tapkaisuu + 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nextSegue" {
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.tapkaisuu = tapkaisuu
        }
    }
}


