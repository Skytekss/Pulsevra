//
//  Hero.swift
//  Pulsevra
//
//  Created by Ilia Grinko on 19.08.2025.
//

import Foundation
import SwiftUI

struct Hero: Identifiable, Hashable, Equatable {
  let id: Int
  let name: String
  let localized_name: String
  let primary_attr: String
  let attack_type: String
  let roles: [String]
  let legs: Int
}

extension Hero: Codable {
  private enum CodingKeys: CodingKey {
    case id
    case name
    case localized_name
    case primary_attr
    case attack_type
    case roles
    case legs
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.id = try container.decode(Int.self, forKey: .id)
    self.name = try container.decode(String.self, forKey: .name)
    self.localized_name = try container.decode(String.self, forKey: .localized_name)
    self.primary_attr = try container.decode(String.self, forKey: .primary_attr)
    self.attack_type = try container.decode(String.self, forKey: .attack_type)
    self.roles = try container.decode([String].self, forKey: .roles)
    self.legs = try container.decode(Int.self, forKey: .legs)
  }
  
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.id, forKey: .id)
    try container.encode(self.name, forKey: .name)
    try container.encode(self.localized_name, forKey: .localized_name)
    try container.encode(self.primary_attr, forKey: .primary_attr)
    try container.encode(self.attack_type, forKey: .attack_type)
    try container.encode(self.roles, forKey: .roles)
    try container.encode(self.legs, forKey: .legs)
  }
}
