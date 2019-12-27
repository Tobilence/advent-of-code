//
//  Reader.swift
//  
//
//  Created by Tobias Furtlehner on 12.12.19.
//

import Foundation

class InputReader {
    
    func readFile(name:String) -> [Int]{
        do {
            let url = Bundle.main.url(forResource: name, withExtension: "txt")!
            let input = try String(contentsOf: url).split { $0.isNewline }
            return input.map { Int($0)!}
        }
        catch {
            //throw InputReaderError.errorReadingFile(errorCode: error)
            print(error)
        }
        return [-1]
    }
}

enum InputReaderError:Error {
    case errorReadingFile(errorCode:Error)
}
