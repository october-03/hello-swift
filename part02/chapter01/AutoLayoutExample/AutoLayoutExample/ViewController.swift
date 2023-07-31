//
//  ViewController.swift
//  AutoLayoutExample
//
//  Created by 김재영 on 2023/07/31.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var colorContainer: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func onColorChange(_ sender: UIButton) {
    print(colorContainer.backgroundColor!)
    if colorContainer.backgroundColor == UIColor.green {
      self.colorContainer.backgroundColor = UIColor.blue
    } else {
      self.colorContainer.backgroundColor = UIColor.green
    }
    print("onClick Color Change Button")
  }
  
}

