//
//  problem9.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/10/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem9
{
  static func getPythagoreanTripletProduct(_ sum: Int) -> Int
  {
    for i in (1...sum)
    {
      for j in (1...sum)
      {
        let temp = (i * i) + (j * j)
        let k = sqrt(Double(temp))
        let sumation = Double(i) + Double(j) + k
        if sumation == 1000.0
        {
          let result = Int(Double(i) * Double(j) * k)
          return result
        }
      }
    }
    return 0
  }
}
