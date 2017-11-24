//
//  Problem22.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 11/24/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem22
{
  static func getTotalValueForNames(file: String) -> Int {
    let dataFromFile = FileMachine.getFileContents(file, fileType: "txt")
    let sortedListOfNames = dataFromFile.sorted()
    var total = 0
    for (index, name) in sortedListOfNames.enumerated()
    {
      total += getValueFor(name:name) * (index + 1)
    }
    return total
  }
  
  static func getValueFor(name: String) -> Int {
    var temp = 0
    for character in name
    {
       temp += getValueFor(character: character)
    }
    return temp
  }
  
  static func getValueFor(character: Character) -> Int {
    let c =  character.unicodeScalars
    let assciiValue:Int = Int(c[c.startIndex].value)
    return assciiValue - 64
  }
  
}
