//
//  main.swift
//  BinarySortALgorithms
//
//  Created by Li, Muchen on 2021/3/23.
//

//creat an empty array
var dataSet: [Int] = []


//populate the array
for _ in 1...15 {
    dataSet.append(Int.random(in: 1...100))
}

bubbleSort(unsorted: &dataSet)

print(dataSet)

//var target = dataSet[Int.random(in: 0...dataSet.count-1)]
var target = Int(readLine()!)!

var min = 0
var max = dataSet.count - 1
var mid = Int((min + max) / 2)
var times = 1

while max >= min {
    
    if target == dataSet[mid]{
        print("The number is the \(mid + 1) number in the list. It is found after \(times) runs.")
        break
    }
    else if target > dataSet[mid] {
        min = mid + 1
    }
    else if target < dataSet[mid] {
        max = mid - 1
    }
    
    print(dataSet[min])
    print(dataSet[max])
    times += 1
}


