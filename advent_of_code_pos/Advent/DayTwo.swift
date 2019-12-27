//
//  DayTwo.swift
//  advent_of_code_pos
//
//  Created by Tobias Furtlehner on 15.12.19.
//  Copyright © 2019 Tobias Furtlehner. All rights reserved.
//

import Foundation

class DayTwo {
    
    let reader = InputReader()
    
    func partOne() -> Int {
        //var array = reader.readFile(name: "input_02")
        var array =  [1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,6,1,19,1,5,19,23,2,6,23,27,1,27,5,31,2,9,31,35,1,5,35,39,2,6,39,43,2,6,43,47,1,5,47,51,2,9,51,55,1,5,55,59,1,10,59,63,1,63,6,67,1,9,67,71,1,71,6,75,1,75,13,79,2,79,13,83,2,9,83,87,1,87,5,91,1,9,91,95,2,10,95,99,1,5,99,103,1,103,9,107,1,13,107,111,2,111,10,115,1,115,5,119,2,13,119,123,1,9,123,127,1,5,127,131,2,131,6,135,1,135,5,139,1,139,6,143,1,143,6,147,1,2,147,151,1,151,5,0,99,2,14,0,0]
        array[1] = 12
        array[2] = 2

        var index = 0
        var value = array[index]

        while value != 99 {
            let operation = value
            index += 1
            let firstValue = array[array[index]]
            index += 1
            let secondValue = array[array[index]]
            index += 1
            array[array[index]] = operation == 1 ? (firstValue + secondValue) : (firstValue * secondValue)
            index += 1
            value = array[index]
        }
        return array[0]
    }
    
    func partTwo() -> Int{
        var constantInput =  [1,0,0,3,1,1,2,3,1,3,4,3,1,5,0,3,2,6,1,19,1,5,19,23,2,6,23,27,1,27,5,31,2,9,31,35,1,5,35,39,2,6,39,43,2,6,43,47,1,5,47,51,2,9,51,55,1,5,55,59,1,10,59,63,1,63,6,67,1,9,67,71,1,71,6,75,1,75,13,79,2,79,13,83,2,9,83,87,1,87,5,91,1,9,91,95,2,10,95,99,1,5,99,103,1,103,9,107,1,13,107,111,2,111,10,115,1,115,5,119,2,13,119,123,1,9,123,127,1,5,127,131,2,131,6,135,1,135,5,139,1,139,6,143,1,143,6,147,1,2,147,151,1,151,5,0,99,2,14,0,0]
        
        var result = constantInput[0]
        var value = 0

        nounLoop: for noun in 0...99 {
            verbLoop: for verb in 0...99 {
                var input = constantInput
                var index = 0
                value = input[index]
                input[1] = noun
                input[2] = verb

                while value != 99 {

                    let operation = value
                    index += 1
                    let firstValue = input[input[index]]
                    index += 1
                    let secondValue = input[input[index]]
                    index += 1
                    input[input[index]] = operation == 1 ? (firstValue + secondValue) : (firstValue * secondValue)
                    index += 1
                    value = input[index]
                    result = input[0]
                    if result == 19690720 {
                        let finalResult = 100 * noun + verb
                        print ("noun: \(noun) | verb: \(verb) | Final result: \(finalResult)")
                        return finalResult
                    }
                }
            }
        }
        return -1
    }
}
