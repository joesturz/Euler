//
//  problem1.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/3/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem1 {
  static func getThreeFiveSum(end: Int) -> (Int)
  {
    var sumArray = [Int]()
    for num in (0..<end) {
      if(num % 3 == 0 || num % 5 == 0)
      {
        sumArray.append(num)
      }
    }
    
    return sumArray.reduce(0, +)
  }
}
