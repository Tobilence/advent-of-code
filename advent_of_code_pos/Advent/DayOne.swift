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
             fuel += Int((Double(inputNumber/3).rounded(.down))-2);
        }

        return fuel;
    }
    
    func partTwo() -> Int {
        let input = reader.readFile(name: "input_01")
        
        return -5; //TODO remove this
    }
}
