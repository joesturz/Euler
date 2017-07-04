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
  static func listDivisors(number: Int) -> ([Int]){
    var temp:[Int] = [1]
    let upperBound = Int(ceil(sqrt(Double(number))))
    for i in (2...upperBound){
      if (number % i == 0){
        temp.append(i)
      }
    }
    var result:[Int] = temp
    for i in temp{
      let j = Int(number / i)
      result.append(j)
    }
    return result
  }
  
  static func determinePrime(number: Int) -> Bool{
    if(number <= 1)
    {
      return false
    }
    else if(number <= 3)
    {
      return true
    }
    else if (number % 2 == 0 || number % 3 == 0)
    {
      return false
    }
    var i = 5
    while(i * i <= number)
    {
      if(number % i == 0 || number % (i + 2) == 0)
      {
        return false
      }
      i = i + 6
    }
    return true
  }
  
  static func getMaxPrimeFrom(largeNumber: Int) -> (Int){
    let list = listDivisors(number: largeNumber)
    var primeList = [Int]()
    for num in list {
      if(determinePrime(number: num))
      {
        primeList.append(num)
      }
    }
    
    return primeList.max()!
  }  
}
