//
//  ProMatch.swift
//  Pulsevra
//
//  Created by Ilia Grinko on 26.08.2025.
//

import Foundation

struct ProMatch: Identifiable {
  let id: Int
  let duration: Int
  let start_time: Int
  let radiant_team_id: Int
  let radiant_name: String
  let dire_team_id: Int
  let dire_name: String
  let leagueid: Int
  let league_name: String
  let series_id: Int
  let series_type: Int
  let radiant_score: Int
  let dire_score: Int
  let radiant_win: Bool
  let radiant: Bool
}

extension ProMatch: Codable {
  private enum CodingKeys: CodingKey {
    case id
    case duration
    case start_time
    case radiant_team_id
    case radiant_name
    case dire_team_id
    case dire_name
    case leagueid
    case league_name
    case series_id
    case series_type
    case radiant_score
    case dire_score
    case radiant_win
    case radiant
  }
  
  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.id = try container.decode(Int.self, forKey: .id)
    self.duration = try container.decode(Int.self, forKey: .duration)
    self.start_time = try container.decode(Int.self, forKey: .start_time)
    self.radiant_team_id = try container.decode(Int.self, forKey: .radiant_team_id)
    self.radiant_name = try container.decode(String.self, forKey: .radiant_name)
    self.dire_team_id = try container.decode(Int.self, forKey: .dire_team_id)
    self.dire_name = try container.decode(String.self, forKey: .dire_name)
    self.leagueid = try container.decode(Int.self, forKey: .leagueid)
    self.league_name = try container.decode(String.self, forKey: .league_name)
    self.series_id = try container.decode(Int.self, forKey: .series_id)
    self.series_type = try container.decode(Int.self, forKey: .series_type)
    self.radiant_score = try container.decode(Int.self, forKey: .radiant_score)
    self.dire_score = try container.decode(Int.self, forKey: .dire_score)
    self.radiant_win = try container.decode(Bool.self, forKey: .radiant_win)
    self.radiant = try container.decode(Bool.self, forKey: .radiant)
  }
  func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(self.id, forKey: .id)
    try container.encode(self.duration, forKey: .duration)
    try container.encode(self.start_time, forKey: .start_time)
    try container.encode(self.radiant_team_id, forKey: .radiant_team_id)
    try container.encode(self.radiant_name, forKey: .radiant_name)
    try container.encode(self.dire_team_id, forKey: .dire_team_id)
    try container.encode(self.dire_name, forKey: .dire_name)
    try container.encode(self.leagueid, forKey: .leagueid)
    try container.encode(self.league_name, forKey: .league_name)
    try container.encode(self.series_id, forKey: .series_id)
    try container.encode(self.series_type, forKey: .series_type)
    try container.encode(self.radiant_score, forKey: .radiant_score)
    try container.encode(self.dire_score, forKey: .dire_score)
    try container.encode(self.radiant_win, forKey: .radiant_win)
    try container.encode(self.radiant, forKey: .radiant)
  }
}
