//
//  HeroStat.swift
//  Pulsevra
//
//  Created by Ilia Grinko on 19.08.2025.
//

import Foundation

struct HeroStat: Identifiable {
  let id: Int
  let name: String
  let localized_name: String
  let primary_attr: String
  let attack_type: String
  let roles: [String]
  let img: String // FIXME:  URL(String) unwrapped type
  let icon: String // FIXME: URL(String) unwrapped type
  let base_health: Int
  let base_health_regen: Int
  let base_mana: Int
  let base_mana_rege: Int
  let base_armor: Int
  let base_mr: Int
  let base_attack_min: Int
  let base_attack_max: Int
  let base_str: Int
  let base_agi: Int
  let base_int: Int
  let str_gain: Int
  let agi_gain: Int
  let int_gain: Int
  let attack_range: Int
  let projectile_speed: Int
  let attack_rate: Int
  let base_attack_time: Int
  let attack_point: Int
  let move_speed: Int
  let turn_rate: Int
  let cm_enabled: Bool
  let legs: Int
  let day_vision: Int
  let night_vision: Int
  let hero_id: Int
  let turbo_picks: Int
  let turbo_wins: Int
  let pro_ban: Int
  let pro_win: Int
  let pro_pick: Int
//  let 1_pick: Int
//  let 1_win: Int
//  let 2_pick: Int
//  let 2_win: Int
//  let 3_pick: Int
//  let 3_win: Int
//  let 4_pick: Int
//  let 4_win: Int
//  let 5_pick: Int
//  let 5_win: Int
//  let 6_pick: Int
//  let 6_win: Int
//  let 7_pick: Int
//  let 7_win: Int
//  let 8_pick: Int
//  let 8_win: Int
}

//extension HeroStat: Codable {
//  private enum CodingKeys: CodingKey {
//    case id
//    case name
//    case localized_name
//  }
//  
//  init(from decoder: Decoder) throws {
//    let container = try decoder.container(keyedBy: CodingKeys.self)
//    self.id = try container.decode(Int.self, forKey: .id)
//    self.name = try container.decode(String.self, forKey: .name)
//    self.localized_name = try container.decode(String.self, forKey: .localized_name)
//  }
//  
//  func encode(to encoder: Encoder) throws {
//    var container = encoder.container(keyedBy: CodingKeys.self)
//    try container.encode(self.id, forKey: .id)
//    try container.encode(self.name, forKey: .name)
//    try container.encode(self.localized_name, forKey: .localized_name)
//  }
//}
