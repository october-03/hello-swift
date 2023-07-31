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
    self.colorContainer.backgroundColor = UIColor.blue
    print("onClick Color Change Button")
  }
  
}

