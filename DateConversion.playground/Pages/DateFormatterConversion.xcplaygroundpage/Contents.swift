import UIKit

var str = "Hello, playground"


//MARK:- MM/dd/yyyy conversion
let input = "12/10/2020"
let formatter = DateFormatter()
formatter.dateFormat = "MM/dd/yyyy"

let date = formatter.date(from: input)
print(date!)  // Prints:  2018-12-10 06:00:00 +0000


//we're in the India:
formatter.locale = Locale(identifier: "en_IN") // Spanish from Spain
formatter.dateStyle = .long //dateStyle and timeStyle
formatter.string(from: date!) // returns "10 de diciembre, 2020"

//we're in the US:
formatter.locale = Locale(identifier: "en_US") //dateStyle and timeStyle
formatter.dateStyle = .short
formatter.string(from: date!) // returns 12/10/2020

//we're in the UK:
formatter.locale = Locale(identifier: "en_GB")
formatter.string(from: date!) // returns 10/12/2020

//we're in the Germany:
formatter.locale = Locale(identifier: "de_DE")
formatter.string(from: date!) // returns 10.12.20

//we're in the Spanish:
formatter.locale = Locale(identifier: "es_ES") // Spanish from Spain
formatter.dateStyle = .long //dateStyle and timeStyle
formatter.string(from: date!) // returns "10 de diciembre, 2020"



//MARK:- yyyy-MM-dd'T'HH:mm:ss.SSS'Z' fixed conversion
let currentDate = date
formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
formatter.timeZone = TimeZone(identifier: "UTC")
formatter.calendar = Calendar(identifier: .gregorian)
let Newdate = formatter.string(from: date!)
print("fixed new date of conversion \(Newdate)")



