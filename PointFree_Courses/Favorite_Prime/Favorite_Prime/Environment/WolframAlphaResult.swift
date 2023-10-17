//
//  WolframAlphaResult.swift
//  Favorite_Prime
//
//  Created by Юлія Воротченко on 17.10.2023.
//

import Foundation

struct WolframAlphaResult: Decodable {
    let queryresult: QueryResult
    
    struct QueryResult: Decodable {
        let pods: [Pod]
        
        struct Pod: Decodable {
            let primary: Bool?
            let subpods: [SubPod]
            
            struct SubPod: Decodable {
                let plaintext: String
            }
        }
    }
}
