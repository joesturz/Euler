//
//  problem7.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/8/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem7
{
  static func findPrime(number: Int) -> Int {
    if (number < 1)
    {
      return -1
    }
    var counter = 0
    var iterator = 2
    while counter != number
    {
      if PrimeMachine.determinePrime(number: iterator)
      {
        counter += 1
      }
      iterator += 1
    }
    return iterator - 1
  }
}
