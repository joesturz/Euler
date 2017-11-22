//
//  problem2.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/3/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem2 {
  static func runFib(end:Int) -> (Int)
  {
    var first = 1
    var second = 2
    var array = [Int]()
    while(second < end)
    {
      if (second % 2 == 0)
      {
        array.append(second)
      }
      let temp = second
      second = first + second
      first = temp
    }
    return array.reduce(0,+)
  }
}
