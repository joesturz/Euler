//
//  Problem23.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 11/24/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem23
{

  
  static func getSetOfNonAbundantSums(limit: Int) -> Int
  {
    let list = getAbundantNumbersUnder(limit: limit)
    var sumableSet:Set<Int> = Set(1..<limit)
    
    for i in list
    {
      for j in list
      {
        let sum = i + j
        if sum < limit
        {
          sumableSet.remove(sum)
        }
      }
    }
    return sumableSet.reduce(0, +)
  }
  
  static func getAbundantNumbersUnder(limit: Int) -> [Int]
  {
    let primeSet = PrimeMachine.setUsingSieveOfEratosthenes(to: limit)
    var abundantList = [Int]()
    
    for i in (12...limit)
    {
      if(!primeSet.contains(i))
      {
        if FactorMachine.isAbundant(number: i)
        {
          abundantList.append(i)
        }
      }
    }
    return abundantList
  }
}
