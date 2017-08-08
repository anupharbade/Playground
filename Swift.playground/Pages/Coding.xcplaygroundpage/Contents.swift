//: [Previous](@previous)

import Foundation
/*:
 Step 1 - Define a JSON structure
*/
let json = """
[
    {
        "name": "Tom Cruise",
        "age": 45,
        "sex": "Male",
        "movies": ["Mission Impossible - 1", "Mission Impossible - 2"]
    },
    {
        "name": "Angelina Jolie",
        "age": 40,
        "sex": "Female",
        "movies": ["Wanted", "Age of wars"]
    }
]
""".data(using: .utf8)!

/*:
 Step 2 - Define a custom model
 */
struct Actor: Codable {
    var name: String
    var age: Int
    var sex: String
    var movies: [String]
}

/*:
 Step 3 - Create a JSON decoder and try to parse JSON data into custom models
 */

let decoder = JSONDecoder()
let actors = try decoder.decode([Actor].self, from: json)

print("The following actors are available")
for actor in actors {
    print("\(actor.name)")
}

//: [Next](@next)
