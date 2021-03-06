//
//  Problem16.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 8/3/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem16
{
  static func getTheSumOfAllTheIntsInTwoToThe(_ power: Int) -> Int
  {
    let result:BInt = BInt(2) ^ power
    let resultAsString:String = result.dec
    return StringMachine.addAllCharactersIn(string: resultAsString)
  }
}
