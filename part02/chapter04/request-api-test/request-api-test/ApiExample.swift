//
//  ApiExample.swift
//  request-api-test
//
//  Created by 김재영 on 2023/08/23.
//

import Foundation

struct ApiExample: Codable {
  let profile: Developer
  let message: String
  
  enum CodingKeys: String, CodingKey {
    case profile = "developer"
    case message
  }
}

struct Developer: Codable {
  let name: String;
  let nickname: String;
  let email: String;
  let age: Int;
}
