//
//  ViewController.swift
//  quote-generator
//
//  Created by Jiwon Park on 2022/03/09.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let quotes = [
        Quote(contents: "The best way to predict your future is to create it.", name: "Peter Drucker"),
        Quote(contents: "The future belongs to those who believe in the beauty of their dreams.", name: "Eleanor Roosevelt"),
        Quote(contents: "Education is the most powerful weapon which you can use to change the world.", name: "Nelson Mandela"),
        Quote(contents: "The best way to find yourself is to lose yourself in the service of others.", name: "Mahatma Gandhi"),
        Quote(contents: "The best way to make your dreams come true is to wake up.", name: "Joan Rivers"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapQuoteGeneratorButton(_ sender: Any) {
        let random = Int(arc4random_uniform(UInt32(quotes.count)))
        let quote = quotes[random]
        self.quoteLabel.text = quote.contents
        self.nameLabel.text = quote.name
    }
    
}

