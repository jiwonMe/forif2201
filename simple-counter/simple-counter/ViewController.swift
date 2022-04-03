//
//  ViewController.swift
//  simple-counter
//
//  Created by Jiwon Park on 2022/04/03.
//

import UIKit

class ViewController: UIViewController {
    
    var num = 0 // for count
    
    @IBOutlet weak var numberDisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func tapAddButton(_ sender: UIButton) {
        num += 1
        numberDisplay.text = String(num)
    }
    
}

