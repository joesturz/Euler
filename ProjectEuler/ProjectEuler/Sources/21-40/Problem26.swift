//
//  Problem26.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 12/6/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem26
{
  static func findLongestRepeatIn(_ largest: Int) -> Int {
    var sequenceLength = 0
    var divisor = 0
    for i in stride(from: largest, to: 2, by: -1)
    {
      if sequenceLength >= i
      {
        break
      }
      var remaindersFound = [Int](repeating: 0, count: i)
      var val = 1
      var pos = 0
      while(remaindersFound[val] == 0 && val != 0)
      {
        remaindersFound[val] = pos
        val *= 10
        val %= i
        pos += 1
      }
      if(pos - remaindersFound[val] > sequenceLength)
      {
        sequenceLength = pos - remaindersFound[val]
        divisor = i
      }
    }
    return divisor
  }
}
