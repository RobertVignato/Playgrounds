//: Playground - noun: a place where people can play

import Foundation
import UIKit

// "Search Array of Dictionaries for Value in Swift"
// http://stackoverflow.com/questions/28203443/search-array-of-dictionaries-for-value-in-swift

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> { // [worf, picard]
    // create an array of Strings to dump in favorite drink strings
    var favoriteDrinkArray = [String]()
    
    for character in characters {
        if let drink = character["favorite drink"] {
            favoriteDrinkArray.append(drink)
        }
    }
    return favoriteDrinkArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks


func favoriteDrinksArrayForCharacters2(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // create an array of Strings to dump in favorite drink strings
    return characters.filter { $0["favorite drink"] != nil }.map { $0["favorite drink"]! }
}

let favoriteDrinks2 = favoriteDrinksArrayForCharacters2(characters)

favoriteDrinks2

println("done")


