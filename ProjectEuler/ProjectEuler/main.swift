//
//  main.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 7/3/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation

func printer(problem number: Int, solution result: Int) {
  print("Problem \(number): \(result)")
}

printer(problem: 1, solution:Problem1.getThreeFiveSum(end: 1000))
printer(problem: 2, solution:Problem2.runFib(end: 4000000))
printer(problem: 3, solution: Problem3.getMaxPrimeFrom(largeNumber: 600851475143))
printer(problem: 4, solution: Problem4.getLargestPalindrome(max: 999))
