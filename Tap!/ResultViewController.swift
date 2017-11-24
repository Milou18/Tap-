//
//  ResultViewController.swift
//  Tap!
//
//  Created by milou Tanaka on 2017/11/17.
//  Copyright © 2017年 Milou Tanaka. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var tapkaisuuLabel: UILabel!
    @IBOutlet var returnButton: UIButton!
    
    var tapkaisuu: Int = 0
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view//
        tapkaisuuLabel.text  =  String(tapkaisuu)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
