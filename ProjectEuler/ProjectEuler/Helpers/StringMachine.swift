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
}
