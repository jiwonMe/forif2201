//
//  SeguePushViewController.swift
//  screen-transaction-example
//
//  Created by Jiwon Park on 2022/03/09.
//

import UIKit

class SeguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func tapBackButton(_ sender: UIButton) {
        self.navigationController?
            .popViewController(animated: true)
    }
}
