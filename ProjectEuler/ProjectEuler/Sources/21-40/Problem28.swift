//
//  Problem28.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 12/23/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem28
{
  static func findSumOfSpiralDiagonalOfSquare(_ dimensions: Int) -> Int
  {
    let area = dimensions * dimensions
    var valueToAdd = 1
    var total = 1
    var distanceToNext = 2
    var squareSide = 0
    while valueToAdd < area {
      
      if squareSide == 4 {
        squareSide = 0
        distanceToNext += 2
      }
      squareSide += 1
      valueToAdd += distanceToNext
      total += valueToAdd
    }
    return total
  }
}
