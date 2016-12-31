    import Foundation
    

    
    
    let arr = [4, 6, 2, 3]
    
    if arr.contains(6) {
        // found it!
        print("y")
    } else {
        print("n")
    }
    
    

    
//    var arrayOfRegions = [String]()
//    var regionDict = [String : Int]()
//    
//    func getAllRegions() -> [String]? {
//        var regions = [String]()
//        for quake in quakes {
//            var r1 = listMatches("[^/ ,]+$", inString: quake)
//            var r2:String = r1[0]
//            regions.append(r2)
//            //println("r2: \(r2)")
////            var loc = [String]()
////            for region in regions {
////                // if region is not in array, "place" : add it
////                //                if !contains(arrayOfRegions, "place" : element: region) {
////                //                }
////                if !contains(<#values: [String]#>, "place" : element: <#String#>)
////            }
//        }
//        return regions
//    }
//    
//    
//    func listMatches(pattern: String, inString string: String) -> [String] {
//        let regex = NSRegularExpression(pattern: pattern, options: .allZeros, error: nil)
//        let range = NSMakeRange(0, count(string))
//        let matches = regex?.matchesInString(string, options: .allZeros, range: range) as! [NSTextCheckingResult]
//        
//        return matches.map {
//            let range = $0.range
//            return (string as NSString).substringWithRange(range)
//        }
//    }
    

