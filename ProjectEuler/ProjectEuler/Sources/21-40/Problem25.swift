//
//  Problem25.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 12/1/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem25
{
  static func getFibonacciOf(_ length: Int) -> Int
  {
    let solution = (Double(length) + (log10(5.0)/2) - 1)/(log10(1.61803398875))
    return Int(round(solution))
  }
}
