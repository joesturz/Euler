//
//  Problem29.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 12/24/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

// the BInt Class seems to really struggle to meet this challenge.
// It takes more than 12 minutes to run, A faster BigInteger Class is necessary!

class Problem29
{
  static func getUniqueCountOfAllExponents(_ lastValue: Int) -> Int {
    var s:Set<String> = Set<String>()
    for num in 2...lastValue {
      let a = BInt(num)
      for b in 2...lastValue {
        let number = a^b
        s.insert(number.asString(withBase: 10))
      }
    }
    return s.count
  }
}
