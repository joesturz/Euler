//
//  Problem18.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 8/5/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem18
{
  static let largeTriangleOfNumbers =
  [[75],
  [95, 64],
  [17, 47, 82],
  [18, 35, 87, 10],
  [20, 04, 82, 47, 65],
  [19, 01, 23, 75, 03, 34],
  [88, 02, 77, 73, 07, 63, 67],
  [99, 65, 04, 28, 06, 16, 70, 92],
  [41, 41, 26, 56, 83, 40, 80, 70, 33],
  [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
  [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
  [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
  [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
  [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
  [04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23]]
  
  static let testGraph =
    [[3],
    [7, 4],
    [2, 4, 6],
    [8, 5, 9, 3]]
  
  static func getLargestSumIn(_ triangleOfNumbers: [[Int]]) -> Int
  {
    var tempArray = triangleOfNumbers.last!
    for i in (0..<(triangleOfNumbers.count - 1)).reversed()
    {
      tempArray = addRow(tempArray, to: triangleOfNumbers[i])
    }
    return tempArray.first!
  }
  
  static func addRow(_ bottom: [Int], to top:[Int]) -> [Int]
  {
    var resultArray = [Int]()
    for i in (0..<top.count)
    {
      let a = top[i]
      let b = (bottom[i] > bottom[i + 1]) ? bottom[i] : bottom[i + 1]
      resultArray.append(a + b)
    }
    
    return resultArray
  }
}

