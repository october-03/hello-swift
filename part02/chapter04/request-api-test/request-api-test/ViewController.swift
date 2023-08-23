//
//  ViewController.swift
//  request-api-test
//
//  Created by 김재영 on 2023/08/23.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var nameLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.getProfileWithURLSession()
  }
  
  func setView(profile: ApiExample) {
    self.nameLabel.text = profile.profile.name
    self.nameLabel.sizeToFit()
  }

  func getProfileWithURLSession() {
    guard let url = URL(string: "http://192.168.0.92:9998") else {return }
    let session = URLSession(configuration: .default)
    session.dataTask(with: url) {
      data, response, error in
      guard let data = data, error == nil else { return }
      let decoder = JSONDecoder()
      guard let profile = try? decoder.decode(ApiExample.self, from: data) else {return}
      DispatchQueue.main.async {
        self.setView(profile: profile)
      }
    }.resume()
  }
}

