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
    print("뷰 로드")
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("뷰가 나타날 예정")
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("뷰가 나타남")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    print("뷰가 사라질 예정")
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print("뷰가 사라짐")
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

