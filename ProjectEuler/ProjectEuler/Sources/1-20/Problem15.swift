//
//  Problem15.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 8/2/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem15
{
  //multiplicative formula, see: https://en.wikipedia.org/wiki/Binomial_coefficient#Binomial_coefficient_in_programming_languages
  static func getPossiblePathsForGridOf(_ size: Int) -> Int
  {
    var paths = 1
    for i in (0..<size)
    {
      paths *= (2 * size) - i
      paths /= i + 1
    }
    return paths
  }
}
