//
//  Problem17.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 8/4/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class Problem17
{
  static let onesMap: [String] = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
  static let tensMap: [String] = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
  
  static func getTotalLetterCountUpTo(_ endingNumber: Int) -> Int {
    var counter = 0
    for i in (1...endingNumber)
    {
      counter += getLetterCountForNumber(i)
    }
    return counter
  }
  
  static func getLetterCountForNumber(_ number: Int) -> Int
  {
    let ones = number % 10
    let tens = (number % 100 - ones) / 10
    let hundreds = (number % 1000 -  ones - tens) / 100
    let thousands = (number % 10000 - ones - tens - hundreds) / 1000
    return numberAsStringBuilder(ones: ones, tens: tens, hundreds: hundreds, thousands: thousands).count
  }
  static func numberAsStringBuilder(ones: Int, tens: Int, hundreds: Int, thousands: Int) -> String
  {
    let tensAndOnes = (tens * 10) + ones
    let t = (thousands > 0) ? "\(String(describing: onesMap[thousands]))thousand" : ""
    let h = (hundreds > 0) ? "\(String(describing: onesMap[hundreds]))hundred" : ""
    if tensAndOnes > 0 && (hundreds > 0 || thousands > 0)
    {
      // it contains an 'and' between the hundreds and tens place
      let to = (tensAndOnes < 20) ? "and\(String(describing: onesMap[tensAndOnes]))" : "and\(String(describing: tensMap[tens]))\(String(describing: onesMap[ones]))"
      return "\(t)\(h)\(to)"
    }
    else
    {
      let to = (tensAndOnes < 20) ? "\(String(describing: onesMap[tensAndOnes]))" : "\(String(describing: tensMap[tens]))\(String(describing: onesMap[ones]))"
      return "\(t)\(h)\(to)"
    }
  }
}
