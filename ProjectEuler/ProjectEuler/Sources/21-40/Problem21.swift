//
//  Problem21.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 11/22/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem21
{
  static var max:Int = 0
  static func getSumOfAmicableNumbersUnder(num: Int) -> Int {
    max = num
    var setOfNumbers:Set<Int> = []
    if num < 4
    {
      return 0
    }
    for i in (4...num)
    {
      if !PrimeMachine.determinePrime(number: i)
      {
        let (num1, num2) = getAmicablePair(num: i)
        setOfNumbers.insert(num1)
        setOfNumbers.insert(num2)
      }
    }
    return setOfNumbers.reduce(0, +)
  }
  
  static func getAmicablePair(num: Int) -> (Int, Int){
    var set1 = FactorMachine.setOfDivisors(number: num)
    set1.remove(num)
    let sum1 = set1.reduce(0, +)
    if sum1 > max || sum1 == num
    {
      return (0,0)
    }
    var set2 = FactorMachine.setOfDivisors(number: sum1)
    set2.remove(sum1)
    let sum2 = set2.reduce(0, +)
    if sum2 == num
    {
      return (num, sum1)
    }
    else
    {
      return (0,0)
    }
  }
}
