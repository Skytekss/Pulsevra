//
//  URLSession+SafeData.swift
//  Pulsevra
//
//  Created by Ilia Grinko on 19.08.2025.
//

import Foundation

extension URLSession {
  func safeData (for request: URLRequest) async throws -> (Data?, URLResponse?) {
    return try await withCheckedThrowingContinuation { continuation in
      let task = self.dataTask(with: request) { data, response, error in
        if let error = error {
          continuation.resume(throwing: error)
          return
        }
        continuation.resume(returning: (data, response))
      }
      task.resume()
    }
  }
}
