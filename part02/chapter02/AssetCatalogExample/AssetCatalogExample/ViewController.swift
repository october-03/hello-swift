//
//  ViewController.swift
//  AssetCatalogExample
//
//  Created by 김재영 on 2023/08/07.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet var screenWrapper: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.screenWrapper.backgroundColor = UIColor.white
  }

  @IBAction func blackCircleBtn(_ sender: UIButton) {
    self.screenWrapper.backgroundColor = UIColor.black
  }
  
  @IBAction func greenCircleBtn(_ sender: UIButton) {
    self.screenWrapper.backgroundColor = UIColor.green
  }
  
  @IBAction func purpleCircleBtn(_ sender: UIButton) {
    self.screenWrapper.backgroundColor = UIColor.purple
  }
}

