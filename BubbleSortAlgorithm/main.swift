//
//  main.swift
//  BubbleSortAlgorithm
//
//  Created by Li, Muchen on 2021/3/19.
//

import Foundation

//Pause to allow the user to see output
func waitForInput() {
    print("Press RETURN to continue...")
    _ = readLine()
}

//creat an empty array
var dataSet: [Int] = []
var sortedNum = 0


//populate the array
//for _ in 1...10 {
//    dataSet.append(Int.random(in: 1...100))
//}
// populate already sorted array
dataSet.append(1)
dataSet.append(2)
dataSet.append(3)
dataSet.append(4)
dataSet.append(5)
dataSet.append(6)
dataSet.append(7)
dataSet.append(8)
dataSet.append(9)
dataSet.append(10)
print(dataSet)

//sort the array
while sortedNum < dataSet.count - 1{
    
    var ifNotSorted = 0
    
    for j in 0...dataSet.count - sortedNum - 2 {
        
        if dataSet[j] > dataSet[j+1]{
            
            let temporaryValue = dataSet[j]
            dataSet[j] = dataSet[j+1]
            dataSet[j+1] = temporaryValue
            ifNotSorted += 1
        }

    }
    
    if ifNotSorted == 0 {
        //print the sorted array
        print("Sorted:")
        print(dataSet)
        waitForInput()
    }

    sortedNum += 1
    
    print("arrary after pass \(sortedNum)")
    print(dataSet)
}
//print the sorted array
print("Sorted:")
print(dataSet)
waitForInput()

