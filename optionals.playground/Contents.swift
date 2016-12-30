//: Playground - noun: a place where people can play

import UIKit

/*

“You can think of an implicitly unwrapped optional as giving permission for the optional to be unwrapped automatically whenever it is used. Rather than placing an exclamation mark after the optional’s name each time you use it, you place an exclamation mark after the optional’s type when you declare it.”

Excerpt From: Apple Inc. “The Swift Programming Language (Swift 2.1 Prerelease).” iBooks.

*/

var strOpt: String? = "Hello Optional"
print( "\"strOptional\" is of type: \(String(describing: strOpt))")
print(strOpt ?? <#default value#>)

var strIUOpt: String! = "Hello Impl Unwr Opt"
print( "\"strImpUnwrappedOptional\" is of type: \(String(describing: strIUOpt))")
print(strIUOpt)

