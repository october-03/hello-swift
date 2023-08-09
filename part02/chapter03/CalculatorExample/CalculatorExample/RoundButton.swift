//
//  RoundButton.swift
//  CalculatorExample
//
//  Created by 김재영 on 2023/08/09.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
  @IBInspectable var isRound: Bool = false {
    didSet {
      if isRound {
        self.layer.cornerRadius = self.frame.height / 2
      }
    }
  }
}
