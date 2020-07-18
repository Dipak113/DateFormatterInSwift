
import Foundation

//JSONEncoder has a built-in way to customize the date formats.Let DateFormatter do the hard work and don't use a custom format string for displaying dates.
struct NewData : Encodable {
    let dateTile: String
    let createdAt : Date
}

let newData = NewData(dateTile: "My Date", createdAt: Date())
let encoder = JSONEncoder()
encoder.outputFormatting = .prettyPrinted

var data = try! encoder.encode(newData)
print(String(data: data, encoding: .utf8)!)
// output = {
//  "createdAt" : 616780344.56156695,
//  "dateTile" : "My Date"
//   }


encoder.dateEncodingStrategy = .iso8601

data = try! encoder.encode(newData)
print(String(data: data, encoding: .utf8)!)

//output
//  {
//  "createdAt" : "2020-07-18T15:52:24Z",
//  "dateTile" : "My Date"
//  }





























