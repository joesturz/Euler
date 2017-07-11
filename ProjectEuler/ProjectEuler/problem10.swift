//
//  problem10.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/10/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem10
{
  static func getSumOfPrimes(below: Int) -> Int
  {
    return Prime.sieveOfEratosthenes(to: below).reduce(0, +)
  }
}
