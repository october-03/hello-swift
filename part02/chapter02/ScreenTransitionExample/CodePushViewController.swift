//
//  CodePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 김재영 on 2023/08/02.
//

import UIKit

class CodePushViewController: UIViewController {
  @IBOutlet weak var propsLabel: UILabel!
  var props: String?
  
  override func viewDidLoad() {
      super.viewDidLoad()
  }
    
  @IBAction func handleBackButton(_ sender: UIButton) {
    self.navigationController?.popViewController(animated: true)
  }
}
