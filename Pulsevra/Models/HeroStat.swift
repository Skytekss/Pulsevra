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
  let img: String
  let icon: String
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
  let pick1: Int
  let win1: Int
  let pick2: Int
  let win2: Int
  let pick3: Int
  let win3: Int
  let pick4: Int
  let win4: Int
  let pick5: Int
  let win5: Int
  let pick6: Int
  let win6: Int
  let pick7: Int
  let win7: Int
  let pick8: Int
  let win8: Int
}

extension HeroStat: Codable {
  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case localized_name
    case primary_attr
    case attack_type
    case roles
    case img
    case icon
    case base_health
    case base_health_regen
    case base_mana
    case base_mana_rege
    case base_armor
    case base_mr
    case base_attack_min
    case base_attack_max
    case base_str
    case base_agi
    case base_int
    case str_gain
    case agi_gain
    case int_gain
    case attack_range
    case projectile_speed
    case attack_rate
    case base_attack_time
    case attack_point
    case move_speed
    case turn_rate
    case cm_enabled
    case legs
    case day_vision
    case night_vision
    case hero_id
    case turbo_picks
    case turbo_wins
    case pro_ban
    case pro_win
    case pro_pick
    case pick1 = "1_pick"
    case win1 = "1_win"
    case pick2 = "2_pick"
    case win2 = "2_win"
    case pick3 = "3_pick"
    case win3 = "3_win"
    case pick4 = "4_pick"
    case win4 = "4_win"
    case pick5 = "5_pick"
    case win5 = "5_win"
    case pick6 = "6_pick"
    case win6 = "6_win"
    case pick7 = "7_pick"
    case win7 = "7_win"
    case pick8 = "8_pick"
    case win8 = "8_win"
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.id = try container.decode(Int.self, forKey: .id)
    self.name = try container.decode(String.self, forKey: .name)
    self.localized_name = try container.decode(String.self, forKey: .localized_name)
    self.primary_attr = try container.decode(String.self, forKey: .primary_attr)
    self.attack_type = try container.decode(String.self, forKey: .attack_type)
    self.roles = try container.decode([String].self, forKey: .roles)
    self.img = try container.decode(String.self, forKey: .img)
    self.icon = try container.decode(String.self, forKey: .icon)
    self.base_health = try container.decode(Int.self, forKey: .base_health)
    self.base_health_regen = try container.decode(Int.self, forKey: .base_health_regen)
    self.base_mana = try container.decode(Int.self, forKey: .base_mana)
    self.base_mana_rege = try container.decode(Int.self, forKey: .base_mana_rege)
    self.base_armor = try container.decode(Int.self, forKey: .base_armor)
    self.base_mr = try container.decode(Int.self, forKey: .base_mr)
    self.base_attack_min = try container.decode(Int.self, forKey: .base_attack_min)
    self.base_attack_max = try container.decode(Int.self, forKey: .base_attack_max)
    self.base_str = try container.decode(Int.self, forKey: .base_str)
    self.base_agi = try container.decode(Int.self, forKey: .base_agi)
    self.base_int = try container.decode(Int.self, forKey: .base_int)
    self.str_gain = try container.decode(Int.self, forKey: .str_gain)
    self.agi_gain = try container.decode(Int.self, forKey: .agi_gain)
    self.int_gain = try container.decode(Int.self, forKey: .int_gain)
    self.attack_range = try container.decode(Int.self, forKey: .attack_range)
    self.projectile_speed = try container.decode(Int.self, forKey: .projectile_speed)
    self.attack_rate = try container.decode(Int.self, forKey: .attack_rate)
    self.base_attack_time = try container.decode(Int.self, forKey: .base_attack_time)
    self.attack_point = try container.decode(Int.self, forKey: .attack_point)
    self.move_speed = try container.decode(Int.self, forKey: .move_speed)
    self.turn_rate = try container.decode(Int.self, forKey: .turn_rate)
    self.cm_enabled = try container.decode(Bool.self, forKey: .cm_enabled)
    self.legs = try container.decode(Int.self, forKey: .legs)
    self.day_vision = try container.decode(Int.self, forKey: .day_vision)
    self.night_vision = try container.decode(Int.self, forKey: .night_vision)
    self.hero_id = try container.decode(Int.self, forKey: .hero_id)
    self.turbo_picks = try container.decode(Int.self, forKey: .turbo_picks)
    self.turbo_wins = try container.decode(Int.self, forKey: .turbo_wins)
    self.pro_ban = try container.decode(Int.self, forKey: .pro_ban)
    self.pro_win = try container.decode(Int.self, forKey: .pro_win)
    self.pro_pick = try container.decode(Int.self, forKey: .pro_pick)
    self.pick1 = try container.decode(Int.self, forKey: .pick1)
    self.win1 = try container.decode(Int.self, forKey: .win1)
    self.pick2 = try container.decode(Int.self, forKey: .pick2)
    self.win2 = try container.decode(Int.self, forKey: .win2)
    self.pick3 = try container.decode(Int.self, forKey: .pick3)
    self.win3 = try container.decode(Int.self, forKey: .win3)
    self.pick4 = try container.decode(Int.self, forKey: .pick4)
    self.win4 = try container.decode(Int.self, forKey: .win4)
    self.pick5 = try container.decode(Int.self, forKey: .pick5)
    self.win5 = try container.decode(Int.self, forKey: .win5)
    self.pick6 = try container.decode(Int.self, forKey: .pick6)
    self.win6 = try container.decode(Int.self, forKey: .win6)
    self.pick7 = try container.decode(Int.self, forKey: .pick7)
    self.win7 = try container.decode(Int.self, forKey: .win7)
    self.pick8 = try container.decode(Int.self, forKey: .pick8)
    self.win8 = try container.decode(Int.self, forKey: .win8)
  }
  
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.id, forKey: .id)
    try container.encode(self.name, forKey: .name)
    try container.encode(self.localized_name, forKey: .localized_name)
    try container.encode(self.localized_name, forKey: .localized_name)
    try container.encode(self.primary_attr, forKey: .primary_attr)
    try container.encode(self.attack_type, forKey: .attack_type)
    try container.encode(self.roles, forKey: .roles)
    try container.encode(self.img, forKey: .img)
    try container.encode(self.icon, forKey: .icon)
    try container.encode(self.base_health, forKey: .base_health)
    try container.encode(self.base_health_regen, forKey: .base_health_regen)
    try container.encode(self.base_mana, forKey: .base_mana)
    try container.encode(self.base_mana_rege, forKey: .base_mana_rege)
    try container.encode(self.base_armor, forKey: .base_armor)
    try container.encode(self.base_mr, forKey: .base_mr)
    try container.encode(self.base_attack_min, forKey: .base_attack_min)
    try container.encode(self.base_attack_max, forKey: .base_attack_max)
    try container.encode(self.base_str, forKey: .base_str)
    try container.encode(self.base_agi, forKey: .base_agi)
    try container.encode(self.base_int, forKey: .base_int)
    try container.encode(self.str_gain, forKey: .str_gain)
    try container.encode(self.agi_gain, forKey: .agi_gain)
    try container.encode(self.int_gain, forKey: .int_gain)
    try container.encode(self.attack_range, forKey: .attack_range)
    try container.encode(self.projectile_speed, forKey: .projectile_speed)
    try container.encode(self.attack_rate, forKey: .attack_rate)
    try container.encode(self.base_attack_time, forKey: .base_attack_time)
    try container.encode(self.attack_point, forKey: .attack_point)
    try container.encode(self.move_speed, forKey: .move_speed)
    try container.encode(self.turn_rate, forKey: .turn_rate)
    try container.encode(self .cm_enabled, forKey: .cm_enabled)
    try container.encode(self.legs, forKey: .legs)
    try container.encode(self.day_vision, forKey: .day_vision)
    try container.encode(self.night_vision, forKey: .night_vision)
    try container.encode(self.hero_id, forKey: .hero_id)
    try container.encode(self.turbo_picks, forKey: .turbo_picks)
    try container.encode(self.turbo_wins, forKey: .turbo_wins)
    try container.encode(self.pro_ban, forKey: .pro_ban)
    try container.encode(self.pro_win, forKey: .pro_win)
    try container.encode(self.pro_pick, forKey: .pro_pick)
    try container.encode(self.pick1, forKey: .pick1)
    try container.encode(self.win1, forKey: .win1)
    try container.encode(self.pick2, forKey: .pick2)
    try container.encode(self.win2, forKey: .win2)
    try container.encode(self.pick3, forKey: .pick3)
    try container.encode(self.win3, forKey: .win3)
    try container.encode(self.pick4, forKey: .pick4)
    try container.encode(self.win4, forKey: .win4)
    try container.encode(self.pick5, forKey: .pick5)
    try container.encode(self.win5, forKey: .win5)
    try container.encode(self.pick6, forKey: .pick6)
    try container.encode(self.win6, forKey: .win6)
    try container.encode(self.pick7, forKey: .pick7)
    try container.encode(self.win7, forKey: .win7)
    try container.encode(self.pick8, forKey: .pick8)
    try container.encode(self.win8, forKey: .win8)
    
  }
}
