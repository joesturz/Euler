//
//  Problem27.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 12/9/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem27 {
  static func findQuadraticFormulaForMax(_ coeffiecient: Int) -> Int {
    let primesList = PrimeMachine.setUsingSieveOfEratosthenes(to: coeffiecient)
    var current:(Int, Int) = (0,0)
    for a in (-(coeffiecient)..<coeffiecient)
    {
      for b in primesList
      {
        for i in (0...1)
        {
          let sign = i % 2 == 0 ? 1 : -1
          let signedB = sign * b
          let temp = countOfConsecutivePrimes(a: a, b: signedB)
          if temp.0 > current.0
          {
            current = temp
          }
        }
      }
    }
    return current.1
  }
  
  static func countOfConsecutivePrimes(a: Int, b: Int) -> (Int, Int) {
    var count = 0
    var productOfCoeff = 0
    var i = 0
    while true
    {
      let temp = (i*i)+(a*i)+b
      if PrimeMachine.determinePrime(number: temp)
      {
        (count += 1)
      }
      else
      {
        productOfCoeff = a*b
        break
      }
      i += 1
    }
    return (count, productOfCoeff)
  }
}
