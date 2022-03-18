//
//  CodePresentViewController.swift
//  screen-transaction-example
//
//  Created by Jiwon Park on 2022/03/09.
//

import UIKit

class CodePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func tapBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
