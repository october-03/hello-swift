//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 김재영 on 2023/08/02.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  @IBAction func handleCodePushButton(_ sender: UIButton) {
    guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePushViewController") else { return }
    self.navigationController?.pushViewController(viewController, animated: true)
  }
  
  @IBAction func handleCodePresentButton(_ sender: UIButton) {
    guard let viewController = self.storyboard?.instantiateViewController(identifier: "CodePresentViewController") else { return }
    self.present(viewController, animated: true)
  }
}

