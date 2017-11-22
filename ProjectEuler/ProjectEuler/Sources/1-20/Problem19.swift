//
//  Problem19.swift
//  ProjectEuler
//
//  Created by Joe Sturzenegger on 11/20/17.
//  Copyright © 2017 Joe Sturzenegger. All rights reserved.
//

import Foundation


class Problem19
{
  static func getCountOf(weekday: Int, from startYear: Int, to endYear: Int, on dayOfTheMonth: Int) -> Int {
    var count = 0
    for year in (startYear...endYear)
    {
      for month in (1...12)
      {
        let date = "\(year)-\(month)-\(dayOfTheMonth)"
        if(getDayOfWeek(from: date) == weekday)
        {
          count += 1
        }
      }
    }
    return count
  }
  
  static func getDayOfWeek(from dateString:String)->Int {
    
    let formatter  = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    let date = formatter.date(from: dateString)!
    let myCalendar = NSCalendar(calendarIdentifier: NSCalendar.Identifier.gregorian)!
    let myComponents = myCalendar.components(.weekday, from: date)
    let weekDay = myComponents.weekday
    return weekDay!
  }
}

