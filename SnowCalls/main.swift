//
//  main.swift
//  SnowCalls
//
//  My last name is:Amaral
//  My first name is: Matthew
//

import Foundation

// INPUT

// Global variable to track how many phone numbers we can expect from the user
var expectedLines = 3

// Add code below to ask the user for how many phones numbers will actually be provided
prompting: while true {
    
    
    print("How many phone numbers will be provided?")
    
    guard let givenInput = readLine() else {
        continue prompting
    }
    
    guard let givenNumber = Int(givenInput) else {
        continue prompting
    }
    
    if givenNumber < 1 || givenNumber > 10 {
        continue prompting
    }
    expectedLines = givenNumber
    break
}


// PROCESS & OUTPUT
// Implement the primary logic of the problem here

// Collect the phone numbers
for n in 1...expectedLines {
    
    // Create the translated phone number
    var translatedPhoneNumber = ""
    
    // Prompt the user
    print("Enter phone number \(n):")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenPhoneNumber = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    // Replace this logic with the correct logic

    for individualnumbers in givenPhoneNumber {
        
        switch individualnumbers {
            
        case "A", "B", "C" :
            
            translatedPhoneNumber += "2"
            continue
            
        case "D", "E", "F" :
            
            translatedPhoneNumber += "3"
             continue
            
        case "G", "I", "H" :
            
            translatedPhoneNumber += "4"
             continue
            
        case "J", "K", "L" :
            
            translatedPhoneNumber += "5"
             continue
            
        case "M", "N", "O" :
            
            translatedPhoneNumber += "6"
             continue
            
        case "P", "Q", "R", "S":
            
            translatedPhoneNumber += "7"
             continue
            
        case "T", "U", "V" :
            
            translatedPhoneNumber += "8"
             continue
            
        case "W", "X", "Y", "Z" :
            
            translatedPhoneNumber += "9"
             continue
            
        default:
            translatedPhoneNumber += String(individualnumbers)
        }
    }
    
    // Print out the converted number
    
    print("This is \(translatedPhoneNumber).")
    
}
