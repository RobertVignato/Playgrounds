//: Playground - noun: a place where people can play

import Foundation
import UIKit

// based on Dict_Filter.playground and "Search Array of Dictionaries for Value in Swift"
// http://stackoverflow.com/questions/28203443/search-array-of-dictionaries-for-value-in-swift

let worf = [
    "BusCat01": "Household",
    "CompanyName": "Bed & Bath Store"
]
let pickard = [
    "BusCat01": "Household",
    "CompanyName": "Dinnerware"
]

let characters = [worf, pickard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // create an array of Strings to dump in favorite drink strings
    var favoriteDrinkArray = [String]()
    
    for character in characters {
        if let drink = character["BusCat01"] {
            favoriteDrinkArray.append(drink)
        }
    }
    return favoriteDrinkArray
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)
favoriteDrinks

// -----------------------------------------------------------

func favoriteDrinksArrayForCharacters2(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // create an array of Strings to dump in favorite drink strings
    return characters.filter { $0["BusCat01"] != nil }.map { $0["BusCat01"]! }
}

let favoriteDrinks2 = favoriteDrinksArrayForCharacters2(characters)

favoriteDrinks2

/* 
The filter takes a closure returning a boolean, which states whether an element must be included or not - in our case, it checks for the existence of an element for key "favorite drink" (BusCat01). This method returns the array of dictionaries satisfying that condition.

The second step uses the ".map" method to transform each dictionary into the value corresponding to the "favorite drink" (BusCat01) key - taking into account that a dictionary lookup always returns an optional (to account for missing key), and that the filter has already excluded all dictionaries not having a value for that key, it's safe to apply the forced unwrapping operator ! to return a non optional string.
*/


