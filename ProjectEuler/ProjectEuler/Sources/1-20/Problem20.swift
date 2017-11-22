//
//  Problem20.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 11/21/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem20
{
  static func sumAllNumsInFactorialOf(number: Int) -> Int {
    var result = BInt(1)
    for i in (2...number)
    {
       result *= BInt(i)
    }
    return StringMachine.addAllCharactersIn(string: result.dec)
  }
}
