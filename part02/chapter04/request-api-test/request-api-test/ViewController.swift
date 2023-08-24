//
//  ViewController.swift
//  request-api-test
//
//  Created by 김재영 on 2023/08/23.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var nicknameLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.getProfileWithURLSession()
    self.getProfileWithAlamofire(completionHandler: { [weak self] result in
      guard let self = self else {return}
      switch result {
      case let .success(result):
        debugPrint(result)
        setNickname(profile: result)
      case let .failure(error):
        debugPrint(error)
      }
    })
  }
  
  func setName(profile: ApiExample) {
    self.nameLabel.text = profile.profile.name
    self.nameLabel.sizeToFit()
  }
  
  func setNickname(profile: ApiExample) {
    self.nicknameLabel.text = profile.profile.nickname
    self.nicknameLabel.sizeToFit()
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
        self.setName(profile: profile)
      }
    }.resume()
  }
  
  func getProfileWithAlamofire(completionHandler: @escaping (Result<ApiExample, Error>) -> Void) {
    let url = "http://192.168.0.92:9998"
    AF.request(url, method: .get)
      .responseData(completionHandler: { response in
        switch response.result {
        case let .success(data):
          do {
            let decoder = JSONDecoder()
            let result = try decoder.decode(ApiExample.self, from: data)
            completionHandler(.success(result))
          } catch {
            completionHandler(.failure(error))
          }
        case let .failure(error):
          completionHandler(.failure(error))
        }
      })
  }
}

