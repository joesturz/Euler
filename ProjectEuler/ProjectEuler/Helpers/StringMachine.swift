//
//  stringMachine.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/9/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class StringMachine
{
  static func getSubstringFromString(_ string: String, from start: Int, to end: Int) -> String?
  {
    let startIndex = string.index(string.startIndex, offsetBy: start)
    let endIndex = string.index(string.startIndex, offsetBy: end)
    let sub = string[startIndex..<endIndex]
    return String(sub)
  }
  
  static func getIntFromCharacter(_ character: Character) -> Int {
    let tempString = String(character)
    return Int(tempString)!
  }
  
  static func getIntFromString(_ string: String) -> Int {
    return Int(string)!
  }
  
  static func addAllCharactersIn(string:String) -> Int {
    var total = 0
    for character in string
    {
      total += StringMachine.getIntFromCharacter(character)
    }
    return total
  }
  static func convert(array: [Int]) -> String {
    var result = ""
    for i in array
    {
      result += "\(i)"
    }
    return result
  }
}
