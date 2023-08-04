//
//  SeguewayPresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 김재영 on 2023/08/02.
//

import UIKit

class SeguewayPresentViewController: UIViewController {

  override func viewDidLoad() {
      super.viewDidLoad()
  }
    
  @IBAction func handleBackButton(_ sender: UIButton) {
    self.presentingViewController?.dismiss(animated: true)
  }
  
  
}
