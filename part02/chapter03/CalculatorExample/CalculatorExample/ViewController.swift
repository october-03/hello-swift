//
//  ViewController.swift
//  CalculatorExample
//
//  Created by 김재영 on 2023/08/08.
//

import UIKit

enum Operation {
  case Sum
  case Minus
  case Multiply
  case Divide
  case unknown
}

class ViewController: UIViewController {
  @IBOutlet weak var resultLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  var displayNum = ""
  var result = ""
  var prev = ""
  var current = ""
  var currOperation: Operation = .unknown
  
  @IBAction func handleNumber(_ sender: UIButton) {
    guard let value = sender.titleLabel?.text else { return }
    if self.displayNum.count < 9 {
      self.displayNum += value
      self.resultLabel.text = self.displayNum
    }
  }
  
  @IBAction func handleClear(_ sender: UIButton) {
    self.displayNum = ""
    self.prev = ""
    self.current = ""
    self.result = ""
    self.currOperation = .unknown
    self.resultLabel.text = "0"
  }
  
  @IBAction func handlePoint(_ sender: UIButton) {
    if self.displayNum.count < 8, !self.displayNum.contains(".") {
      self.displayNum += self.displayNum.isEmpty ? "0." : "."
      self.resultLabel.text = self.displayNum
    }
  }
  
  @IBAction func handleDivide(_ sender: UIButton) {
    self.operation(.Divide)
  }
  
  @IBAction func handleMultiply(_ sender: UIButton) {
    self.operation(.Multiply)
  }
  
  @IBAction func handleMinus(_ sender: UIButton) {
    self.operation(.Minus)
  }
  
  @IBAction func handleSum(_ sender: UIButton) {
    self.operation(.Sum)
  }
  
  @IBAction func handleResult(_ sender: UIButton) {
    self.operation(self.currOperation)
  }
  
  func operation(_ operation: Operation) {
    if self.currOperation != .unknown {
      if !self.displayNum.isEmpty {
        self.current = self.displayNum
        self.displayNum = ""
        
        print("\(self.prev)")
        
        guard let prev = Double(self.prev) else {return}
        guard let current = Double(self.current) else {return}
        
        switch self.currOperation {
        case .Sum:
          self.result = "\(prev + current)"
        case .Minus:
          self.result = "\(prev - current)"
        case .Divide:
          self.result = "\(prev / current)"
        case .Multiply:
          self.result = "\(prev * current)"
        default:
          break
        }
        
        if let result = Double(self.result), result.truncatingRemainder(dividingBy: 1) == 0 {
          self.result = "\(Int(result))"
        }
        
        self.prev = self.result
        self.resultLabel.text = self.result
      }
      
      self.currOperation = operation
    } else {
      self.prev = self.displayNum
      self.currOperation = operation
      self.displayNum = ""
    }
  }
}

