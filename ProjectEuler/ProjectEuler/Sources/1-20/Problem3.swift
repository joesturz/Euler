//
//  problem3.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/3/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

class Problem3 {
  static func runFibonacci(first: Int = 1, second: Int = 1, _ end: Int) -> Int{
    if(first == 1 && second != 1){
      print(first)
    }
    print(second)
    let new_first = second
    let new_second = first + second
    if (second >= end){
      return second
    }
    else{
      return runFibonacci(first: new_first, second: new_second, end)
    }
  }
  //
  static func modThatThing(with modulus: Int) -> Bool?{
    var result: Bool?
    if runFibonacci(144) % modulus == 0{
      result = true
    }
    return result
  }
  //
  //let result = runFibonacci(144) % 2 == 0 ? 0 : 2
  //
  //let text:String = "Hello world"
  //
  //var myString: String?
  
  static func getMaxPrimeFrom(largeNumber: Int) -> (Int){
    let list = Prime.listDivisors(number: largeNumber)
    var primeList = [Int]()
    for num in list {
      if(Prime.determinePrime(number: num))
      {
        primeList.append(num)
      }
    }
    
    return primeList.max()!
  }  
}
