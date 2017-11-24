//
//  Problem67.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 8/8/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem67
{
  
  
  static func reallyBigTriangleFrom(file: String) -> [[Int]] {
    let dataFromFile = FileMachine.getFileContents(file, fileType: "txt")
    var arrayOfArraysOfNumbers = [[Int]]()
    for string in dataFromFile
    {
      let strings = string.split(separator: " ")
      var arrayOfNumbers = [Int]()
      for number in strings
      {
        let num = StringMachine.getIntFromString(String(number))
        arrayOfNumbers.append(num)
      }
      if(arrayOfNumbers.count > 0)
      {
        arrayOfArraysOfNumbers.append(arrayOfNumbers)
      }
    }
    return arrayOfArraysOfNumbers
  }
  
}
