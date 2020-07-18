//: [Previous](@previous)

import Foundation

//MARK:- Date Formatter and Variable Declaration
var jsonString = "07/19/2020"
let formatter = DateFormatter()
formatter.dateFormat = "MM/dd/yyyy"
formatter.timeZone = TimeZone(identifier: "UTC")

let jsonDate = formatter.date(from: jsonString)
print(jsonDate!)


// MARK:- Function to display, How much time ago you post anything ?
func timeAgoSinceDate(date:Date) -> String {

     // From Time
     let fromDate = date

     // To Time
     let toDate = Date()

     // Estimation
     // Year
     if let interval = Calendar.current.dateComponents([.year], from: fromDate, to: toDate).year, interval > 0  {

         return interval == 1 ? "\(interval)" + " " + "year ago" : "\(interval)" + " " + "years ago"
     }

     // Month
     if let interval = Calendar.current.dateComponents([.month], from: fromDate, to: toDate).month, interval > 0  {

         return interval == 1 ? "\(interval)" + " " + "month ago" : "\(interval)" + " " + "months ago"
     }

     // Day
     if let interval = Calendar.current.dateComponents([.day], from: fromDate, to: toDate).day, interval > 0  {

         return interval == 1 ? "\(interval)" + " " + "day ago" : "\(interval)" + " " + "days ago"
     }

     // Hours
     if let interval = Calendar.current.dateComponents([.hour], from: fromDate, to: toDate).hour, interval > 0 {

         return interval == 1 ? "\(interval)" + " " + "hour ago" : "\(interval)" + " " + "hours ago"
     }

     // Minute
     if let interval = Calendar.current.dateComponents([.minute], from: fromDate, to: toDate).minute, interval > 0 {

         return interval == 1 ? "\(interval)" + " " + "minute ago" : "\(interval)" + " " + "minutes ago"
     }

     return "Future Date selection"
 }


jsonString = timeAgoSinceDate(date: jsonDate!)
print("Time ago since date \(jsonString)")
// output Example :- Time ago since date 17 hours ago
// OutPut Example for future date :- Time ago since date Future Date selection
