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
var times = 1

    
while max >= min {
    
    print("")
    print("Start is: \t\t\(min)")
    print("Middle is: \t\t\(max)")
    print("End is: \t\t\(max)")
    print("Target value: \t\(target)")
    print("------")
    print("Index:\t", terminator: "")
    for i in min...max {
        print("\(i)\t", terminator: "")
    }
    print("")
    print("Values: ", terminator: "")
    for i in min...max {
        print("\(dataSet[i])\t", terminator: "")
    }
    print("")
    waitForInput()
    
    let mid = Int((min + max) / 2)
    
    if target == dataSet[mid]{
        print("The number is in the \(mid + 1) place in the list. It is found after \(times) runs.")
        break
    }
    else if target > dataSet[mid] {
        min = mid + 1
    }
    else if target < dataSet[mid] {
        max = mid - 1
    }
    
    times += 1
    
    print("== Target not found ==")
    
}

if max <= min {
    print("OOPS! The value is not in the array. Sorry!")
}
