//
//  PermutationsMachine.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 12/1/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
public extension Collection {
  var permutations: [[Iterator.Element]] {
    func permute<C: Collection>(items: C) -> [[C.Iterator.Element]] {
      var scratch = Array(items) // This is a scratch space for Heap's algorithm
      var result: [[C.Iterator.Element]] = [] // This will accumulate our result
      // Heap's algorithm
      func generate(n: Int) {
        if n == 1 {
          result.append(scratch)
          return
        }
        for i in 0..<n-1 {
          generate(n: n-1)
          let j = (n%2 == 1) ? 0 : i
          scratch.swapAt(j, n-1)
        }
        generate(n: n-1)
      }
      // Let's get started
      generate(n: scratch.count)
      // And return the result we built up
      return result
    }
    // Return all permutations
    return permute(items: self)
  }
}

public extension String {
  var permutations: [String] {
    return self.permutations.map { String($0) }
  }
}
