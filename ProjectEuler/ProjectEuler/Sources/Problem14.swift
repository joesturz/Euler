//
//  Problem14.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 8/1/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem14
{
  static func getMaxIterationInColatz(_ max: Int) -> Int
  {
    var maxCount = 0
    var currentNumber = 2
    for i in (2...max) where i % 2 == 1
    {
      let count = runColatzOn(number: i, count: 0)
      if count > maxCount
      {
        maxCount = count
        currentNumber = i
      }
    }
    return currentNumber
  }
  static func runColatzOn(number: Int, count: Int) -> Int
  {
    let newCount = count + 1
    if number == 1
    {
      return newCount
    }
    else
    {
      if number % 2 == 0
      {
        let newNumber = number / 2
        return runColatzOn(number: newNumber, count: newCount)
      }
      else
      {
        let newNumber = (3 * number) + 1
        return runColatzOn(number: newNumber, count: newCount)
      }
    }
  }
}
