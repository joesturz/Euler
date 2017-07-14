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

//printer(problem: 1, solution:Problem1.getThreeFiveSum(end: 1000))
//printer(problem: 2, solution:Problem2.runFib(end: 4000000))
//printer(problem: 3, solution: Problem3.getMaxPrimeFrom(largeNumber: 600851475143))
//printer(problem: 4, solution: Problem4.getLargestPalindrome(max: 999))
//printer(problem: 5, solution: Problem5.getSmallestMultiple(of: 20))
//printer(problem: 6, solution: Problem6.getDifference(to: 100))
//printer(problem: 7, solution: Problem7.findPrime(number: 10001))
//printer(problem: 8, solution: Problem8.findLargestProductIn(numberAsString: Problem8.otherNumberAsString, factorCount: 13))
//printer(problem: 9, solution: Problem9.getPythagoreanTripletProduct(1000))
//printer(problem: 10, solution: Problem10.getSumOfPrimes(below: 2_000_000))
printer(problem: 11, solution: Problem11.findAllDirections())

