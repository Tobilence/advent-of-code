//
//  DayOne.swift
//  
//
//  Created by Tobias Furtlehner on 12.12.19.
//

import Foundation

class DayOne {
    
    let reader = InputReader()
    
    func partOne() -> Int {
        let input = reader.readFile(name: "input_01")
        var fuel = 0;

        for inputNumber in input {
             fuel += Int((Double(inputNumber/3).rounded(.down))-2)
        }

        return fuel;
    }
    
    func partTwo() -> Int {
        let input = reader.readFile(name: "input_01")
        var fuel = 0;

        for inputNumber in input {
            var temp = Int((Double(inputNumber/3).rounded(.down))-2)
            fuel += temp;
            while(temp > 0) {
                temp = Int((Double(temp/3).rounded(.down))-2)
                if(temp > 0){
                    fuel += temp
                }
            }
        }
        return fuel
    }
}
