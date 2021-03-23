//
//  main.swift
//  BubbleSortAlgorithm
//
//  Created by Li, Muchen on 2021/3/19.
//

import Foundation

//creat an empty array
var dataSet: [Int] = []


//populate the array
for _ in 1...10 {
    dataSet.append(Int.random(in: 1...100))
}

print("Unsorted:")
print(dataSet)
waitForInput()


bubbleSort(unsorted: &dataSet)


//print the sorted array
print("Sorted:")
print(dataSet)
waitForInput()

