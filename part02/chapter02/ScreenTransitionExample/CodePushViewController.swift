//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 김재영 on 2023/08/02.
//

import UIKit

class CodePushViewController: UIViewController {

  override func viewDidLoad() {
      super.viewDidLoad()
  }
    
  @IBAction func handleBackButton(_ sender: UIButton) {
    self.navigationController?.popViewController(animated: true)
  }
}
