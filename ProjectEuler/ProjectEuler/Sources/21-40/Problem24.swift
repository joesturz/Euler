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
  private static var array:[[Int]] = []
  static func getPermutations(a: [Int]) ->[[Int]]
  {
    generate(size: a.count, a: a)
    return array
  }
  static func generate(size: Int, a: [Int])
  {
    var collection:[Int] = a
    if size == 1
    {
      array.append(collection)
    }
    for i in (0..<size)
    {
      generate(size: (size-1), a: collection)
      let j = (size % 2 == 0) ? 0 : i
      collection.swapAt(j, size-1)
    }
  }
}
