//
//  main.swift
//  InfrrdTaskPavan
//
//  Created by Pavan Kalyan Jonnadula on 13/04/20.
//  Copyright © 2020 Pavan Kalyan Jonnadula. All rights reserved.
//

import Foundation
print("Enter number of ships")
let numberShips = readLine()

var numberofShips = Int(numberShips!)
var arrayOfLootsInShips = [Int]()
var numOfDays = 0
for num in 0..<numberofShips!{
    print("Enter the loot in the ship [\(num + 1)]")
    let indexNum = readLine()
    let indexNum1 = Int(indexNum!)!
    arrayOfLootsInShips.append(indexNum1)
}
var dupliacateArrayOfShips = arrayOfLootsInShips
func checkAndReturnHowManyBigNumberareThere() -> Int{
    let comparisonNumber = arrayOfLootsInShips[0]
    var count = 0
    for num in arrayOfLootsInShips{
        if num > comparisonNumber{
            count = count + 1
        }
    }
    return count
}

func countNumberOFDays(){
    let comparisonNumber = arrayOfLootsInShips[0]
    for index in 0..<dupliacateArrayOfShips.count{
        let duplicateLoot = dupliacateArrayOfShips[index]
        if comparisonNumber < duplicateLoot{
            if dupliacateArrayOfShips.count > index + 1 && comparisonNumber >= index + 1{
                arrayOfLootsInShips.remove(at: arrayOfLootsInShips.firstIndex(of: duplicateLoot) ?? 0)
            }
        }
    }
    numOfDays = numOfDays + 1
    if checkAndReturnHowManyBigNumberareThere() > 1{
        dupliacateArrayOfShips = arrayOfLootsInShips
        countNumberOFDays()
    }else{
        for num in arrayOfLootsInShips{
            if num > comparisonNumber{
                arrayOfLootsInShips.remove(at: arrayOfLootsInShips.firstIndex(of: num) ?? 0)
                numOfDays = numOfDays + 1
            }
        }
    }
    
}
print(arrayOfLootsInShips)
if arrayOfLootsInShips.count > 1{
    countNumberOFDays()
}else{
    print("you have only one ship")
}


print("the number of days required to destroy the ship is---->",numOfDays)
