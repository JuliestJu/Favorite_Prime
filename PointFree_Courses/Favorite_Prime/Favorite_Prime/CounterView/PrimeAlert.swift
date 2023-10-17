//
//  PrimeAlert.swift
//  Favorite_Prime
//
//  Created by Юлія Воротченко on 17.10.2023.
//

import Foundation

struct PrimeAlert: Identifiable {
  let prime: Int

  var id: Int { self.prime }
}
