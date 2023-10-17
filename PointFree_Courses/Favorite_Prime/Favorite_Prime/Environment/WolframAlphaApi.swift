//
//  WolframAlphaApi.swift
//  Favorite_Prime
//
//  Created by Юлія Воротченко on 17.10.2023.
//

import Foundation

struct WolframAlphaApi {
    
    func nthPrime(_ n: Int, completionHandler: @escaping (Int?) -> Void) {
        wolframAlpha(query: "prime \(n)") { result in
            completionHandler(result.flatMap {
                $0.queryresult
                    .pods
                    .first(where: { $0.primary == .some(true) })?
                    .subpods
                    .first?
                    .plaintext
            }
                .flatMap { Int($0) })
        }
    }
    
    
    private func wolframAlpha(query: String, callback: @escaping (WolframAlphaResult?) -> Void) -> Void {
        var components = URLComponents(string: "https://api.wolframalpha.com/v2/query")!
        components.queryItems = [
            URLQueryItem(name: "input", value: query),
            URLQueryItem(name: "format", value: "plaintext"),
            URLQueryItem(name: "output", value: "JSON"),
            URLQueryItem(name: "appid", value: "4Y2QLH-LE6UV74ALE"),
        ]
        
        URLSession.shared.dataTask(with: components.url(relativeTo: nil)!) { data, response, error in
            
            callback(
                data
                    .flatMap { try? JSONDecoder().decode(WolframAlphaResult.self, from: $0)}
            )
        }
        .resume()
    }
}
