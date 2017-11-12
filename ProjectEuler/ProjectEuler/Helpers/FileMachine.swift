//
//  FileMachine.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 8/8/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation
class FileMachine
{
  static func getFileContents(_ fileName: String, fileType: String) -> [String] {
    
    // add file to resources folder
    // go to project > target > build phases > copy files
    // make sure the Destination drop down is set to Resources
    // make sure the Subpath is set to Resources
    // add the file to the list of Names
    
    if let path = Bundle.main.url(forResource: fileName, withExtension: fileType, subdirectory: "Resources")
    {
      do{
        let data = try String(contentsOfFile: path.path, encoding: .utf8)
        let myStrings = data.components(separatedBy: .newlines)
        return myStrings
      }
      catch{
        print(error)
      }
    }
    else
    {
      print("The file wasn't found...")
    }
    return [String]()
  }
}
