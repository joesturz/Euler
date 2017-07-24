//
//  problem6.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/6/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem6 {
  static func getSquareOfSum(to number: Int) -> Int {
    let sum = (1...number).reduce(0,+)
    return sum * sum
  }
  static func getSumOfSquare(to number: Int) -> Int {
    var squares = [Int]()
    for i in 1 ... number {
      squares.append(i * i)
    }
    return squares.reduce(0, +)
  }
  static func getDifference(to number: Int) -> Int{
    return getSquareOfSum(to: number) - getSumOfSquare(to: number)
  }
  
}
