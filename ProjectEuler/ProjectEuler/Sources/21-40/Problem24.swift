//
//  Problem24.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 11/29/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem24
{
  private static var array:[String] = []
  
  static func getPermutation(_ at: Int, for array: [Int]) -> String {
    return getLexicographicOrderedPermutations(a: array)[at-1]
  }
  
  static func getLexicographicOrderedPermutations(a: [Int]) ->[String]
  {
    let list = a.permutations
    var resultList:[String] = []
    for array in list
    {
      resultList.append(StringMachine.convert(array: array))
    }
    resultList.sort()
    return resultList
  }
}
