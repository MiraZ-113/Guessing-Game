// C323 Mobile App Development - Mitja Hmeljak Summer 2020
//
//  Lab 07: more examples in the Swift programming language
//
//  Note: the following Swift code will run correctly
//        from swift command-line,
//        but it won't do much as a Playground in Xcode.
//
//  To run from command line, simply type in a Terminal.app window:
//      swift lab-07-C323-Summer-2020-read-line.swift


import Foundation     // for random numbers with arc4random_uniform()



// method returning a positive integer, within bounds:
//
func randRange (aMin: UInt32 , aMax: UInt32) -> UInt32 {
    return aMin + arc4random_uniform(aMax - aMin + 1)
}



// example for getting user input from command-line,
//    using the readLine() method, which exists from Swift 2 onward:

//for i in 0...10 {
//    print("At iteration \(i) of the for loop. Please enter an integer:")
//
//    // this is how we properly unwrap an optional value:
//    if let myText = readLine() {
//        print("comparing \(myText) to \(randRange(aMin: 0,aMax: 10))")
//
//        // another correct unwrap of an optional value:
//        if let integ = Int(myText) {
//            print ("the integer version of your input is: \(integ)")
//        } else {
//            // of course, this may crash:
//            print ("the integer non-optional version of your input is: \(Int(myText)!)")
//        }
//    } else {
//        print("Warning: failed unwrapping an optional!")
//    }
//
//} // end of for loop


// asking user the aMin and aMax from command-line
    


var lowerBound: Int!
var i = true

    while i == true {
    print("Please choose your minimum number: ")
    
    if let userInput = readLine() {
        if let minimumNumber = Int(userInput) {
            print("Yes, my lord!")
        lowerBound = minimumNumber
    i = false
        }
    }
}


var higherBound: Int!
var r = true

    while r == true {
    print("Please choose your maximum number: ")
    
        if let userInput = readLine() {
            if let maximumNumber = Int (userInput) {
            print("Yes, your highness!")
            higherBound = maximumNumber
        r = false
    }
  }
}

func randRange (lower: UInt32 , higher:UInt32) -> UInt32 {
        return lower + arc4random_uniform(higher - lower + 1)
    }


let randomNumber = Int(randRange(lower: UInt32(lowerBound),higher: UInt32(higherBound)))
    

var j = true

    while j == true {
           print("Please enter your guessing: ")
        
    if let userInput = readLine() {
         
            if let userNumber = Int(userInput){
                
                
            if userNumber > randomNumber {
                        print("too high!")
                    }
                else if userNumber < randomNumber {
                        print("too low!")
                    }
            else{
                        print("correct!")
                        j = false
                }
       }
   }

}
        

// example defining an array in Swift:
//

//var myArray = [0, "hello", "bye"] as [Any]
//
//print ("this is how we print the content of an array:")
//print (myArray.description)
//print ("and this array has \(myArray.count) elements")
//
//
//
//// example defining a dictionary in Swift:
////
//
//var myDictionary = [0: true,
//                    false: "hello",
//                    "three": "four"] as [AnyHashable : Any]
//
//print ("this is how we print the content of a dictionary:")
//print (myDictionary.description)

