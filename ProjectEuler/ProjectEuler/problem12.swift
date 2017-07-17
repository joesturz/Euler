//
//  problem12.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/16/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem12
{
  static func triangleValueWithDivisorCountGreaterThan(_ divisors: Int) -> Int {
    var currentDivisorsCount = 0
    var currentTriangleValue = 1
    var triangle = 0
    
    repeat {
      triangle = getTriangleValue(currentTriangleValue)
      currentDivisorsCount = Prime.setOfDivisors(number: triangle).count
      currentTriangleValue += 1
    } while currentDivisorsCount <= divisors
    
    return triangle
  }
  
  static func getTriangleValue(_ number: Int) -> Int {
    return (1...number).reduce(0, +)
  }
}
