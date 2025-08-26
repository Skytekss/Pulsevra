//
//  NetworkMaganer.swift
//  Pulsevra
//
//  Created by Ilia Grinko on 19.08.2025.
//

import Foundation

final class NetworkMaganer {
  
  // MARK: Errors
  enum Error: LocalizedError {
    case noData
  }
  
  // MARK: API
  enum API: String {
    case heroes = "/heroes"
    case heroItemsPopularity = "/heroes/{hero_id}/itemPopularity"
    case heroStats = "/heroStats"
    case proMatches = "/proMatches"
    
  }
  
  let baseURL: URL = URL(string: "https://api.opendota.com/api")!
  
  func request<T: Decodable> (path: API) async throws -> T {
    var components = URLComponents.init(url: baseURL, resolvingAgainstBaseURL: true)
    components?.path = path.rawValue
    
    guard let url = components?.url else { throw Error.noData }
    
    let request = URLRequest(url: url)
    let (data, _) = try await URLSession.shared.safeData(for: request)
    guard let data else { throw Error.noData }
    return try JSONDecoder().decode(T.self, from: data)
  }
}
