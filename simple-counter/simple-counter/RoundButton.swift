//
//  RoundButton.swift
//  simple-counter
//
//  Created by Jiwon Park on 2022/04/03.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var isRound: Bool = false {
        didSet {
            self.layer.cornerRadius = self.frame.height / 2
        }
    }
}
