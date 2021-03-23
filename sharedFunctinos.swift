//
//  sharedFunctinos.swift
//  BubbleSortAlgorithm
//
//  Created by Li, Muchen on 2021/3/23.
//

import Foundation

//Pause to allow the user to see output
func waitForInput() {
    print("Press RETURN to continue...")
    _ = readLine()
}


//to allow the array to be passed by referenec (rather than a copy) we will mark the parameter as "inout" which emans we can change the ORINIGAL from outside the function

func bubbleSort(unsorted dataSet: inout [Int]){

    
    var sortedNum = 0
    
    //sort the array
    while sortedNum < dataSet.count - 1{
        
        var sorted = true
        
        for j in 0...dataSet.count - sortedNum - 2 {
            
            if dataSet[j] > dataSet[j+1]{
                
                let temporaryValue = dataSet[j]
                dataSet[j] = dataSet[j+1]
                dataSet[j+1] = temporaryValue
                sorted = false
            }

        }
        
        if sorted == true {
            break
        }

        sortedNum += 1
        
    }
    
}
