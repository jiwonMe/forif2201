//
//  ViewController.swift
//  screen-transaction-example
//
//  Created by Jiwon Park on 2022/03/09.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }

    @IBAction func tapCodePushButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") else { return }
        self.navigationController?
            .pushViewController(viewController, animated: true)
    }
    
    @IBAction func tapCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") else { return }
        
        self.present(viewController, animated: true, completion: nil)
    }
    
}

