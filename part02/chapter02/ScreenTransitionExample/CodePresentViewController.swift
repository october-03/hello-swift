//
//  CodePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 김재영 on 2023/08/02.
//

import UIKit

protocol SendDataDelegate: AnyObject {
  func sendData(_ props: String)
}

class CodePresentViewController: UIViewController {
  @IBOutlet weak var propsLabel: UILabel!
  var props: String?
  weak var delegate: SendDataDelegate?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    if let props = props {
      self.propsLabel.text = props
      self.propsLabel.sizeToFit()
    }
  }

  @IBAction func handleBackButton(_ sender: UIButton) {
    self.delegate?.sendData("This is props")
    self.presentingViewController?.dismiss(animated: true)
  }
}
