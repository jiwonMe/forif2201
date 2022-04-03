//
//  RoundButton.swift
//  simple-calculator
//
//  Created by Jiwon Park on 2022/04/03.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        updateCornerRadius()
    }

    @IBInspectable var isRound: Bool = false {
        didSet {
            updateCornerRadius()
        }
    }
    
    func updateCornerRadius() {
        self.layer.cornerRadius = isRound ? self.frame.size.height / 2 : 0
    }
}
