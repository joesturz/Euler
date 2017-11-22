//
//  problem5.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/4/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem5
{
  static func getSmallestMultiple(of number: Int) -> Int
  {
    let max = (1...number).reduce(1, *)
    let divisors = getListOf(divisorsFor: number)
    for i in stride(from: number, to: max, by: number) {
      if(can(integer: i, beDivisibleBy: divisors))
      {
        return i
      }
    }
    return 0
  }
  
  static func can(integer number: Int, beDivisibleBy divisors: Set<Int>) -> Bool
  {
    for i in divisors
    {
      if number % i != 0
      {
        return false
      }
    }
    return true
  }
  
  static func getListOf(divisorsFor number: Int) -> Set<Int>
  {
    var values = Set<Int>()
    for i in (2...number).reversed()
    {
      values.insert(i)
    }
    return removeExtraDivisorsFrom(set: values)
  }
  
  static func removeExtraDivisorsFrom(set: Set<Int>) -> Set<Int>
  {
    var result: Set = set
    for i in set {
      let removeList = Prime.listDivisors(number: i)
      for j in removeList
      {
        if(j < i)
        {
          result.remove(j)
        }
      }
    }
    return result
  }
  
}
