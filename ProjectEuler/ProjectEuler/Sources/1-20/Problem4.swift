//
//  problem4.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/3/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem4 {
  static func getLargestPalindrome(max: Int) -> Int{
    let end = (max / 9) - 1
    var result = [Int]()
    for i in (end...max).reversed() {
      let temp = i
      for j in (end...temp).reversed() {
        let value = i * j
        if(isPalindrome(number: value)){
          result.append(value)
        }
      }
    }
    return result.max()!
  }
  
  private static func isPalindrome(number: Int) -> Bool {
    let stringified =  String(number)
    let reversedString = String(stringified.reversed())
    return stringified == reversedString
  }
}
