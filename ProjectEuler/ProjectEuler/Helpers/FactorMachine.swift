//
//  FactorMachine.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 11/24/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class FactorMachine
{
  static func listDivisors(number: Int) -> ([Int])
  {
    var temp:[Int] = [1]
    if number == 1
    {
      return temp
    }
    let upperBound = Int(ceil(sqrt(Double(number))))
    for i in (2...upperBound){
      if (number % i == 0){
        temp.append(i)
      }
    }
    var result:[Int] = temp
    for i in temp{
      let j = Int(number / i)
      result.append(j)
    }
    return result
  }
  
  static func setOfDivisors(number: Int) -> (Set<Int>)
  {
    var temp:Set<Int> = [1]
    if number == 1
    {
      return temp
    }
    let upperBound = Int(ceil(sqrt(Double(number))))
    for i in (2...upperBound){
      if (number % i == 0){
        temp.insert(i)
      }
    }
    var result:Set<Int> = temp
    for i in temp{
      let j = Int(number / i)
      result.insert(j)
    }
    return result
  }
  
  static func setOfProperDivisors(number: Int) -> (Set<Int>)
  {
    var set = setOfDivisors(number: number)
    set.remove(number)
    return set
  }
  
  static func isAbundant(number: Int) -> Bool {
    let total = setOfProperDivisors(number: number).reduce(0, +)
    if (total <= number)
    {
      return false
    }
    return true
  }

}
