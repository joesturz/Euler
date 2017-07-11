//
//  prime.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/7/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Prime {
  static func sieveOfEratosthenes(to number: Int) -> [Int]
  {
    var result = [Int]()
    var temp = [Bool](repeating: true, count: number)
    if number < 2
    {
      return result
    }
    else
    {
      let squareRootOfNumber = Int(ceil(sqrt(Double(number))))
      for i in (2...squareRootOfNumber)
      {
        if temp[i] == true
        {
          var j = i * i
          let iSquared = i * i
          var iteration = 0
          while (j < number)
          {
            temp[j] = false
            j = iSquared + (i * iteration)
            iteration = iteration + 1
          }
        }
      }
    }
    for i in (2..<number)
    {
      if temp[i] == true
      {
        result.append(i)
      }
    }
    return result
  }
  
  static func determinePrime(number: Int) -> Bool
  {
    if(number <= 1)
    {
      return false
    }
    else if(number <= 3)
    {
      return true
    }
    else if (number % 2 == 0 || number % 3 == 0)
    {
      return false
    }
    var i = 5
    while(i * i <= number)
    {
      if(number % i == 0 || number % (i + 2) == 0)
      {
        return false
      }
      i = i + 6
    }
    return true
  }
}
