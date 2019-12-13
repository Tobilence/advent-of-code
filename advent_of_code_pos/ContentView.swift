//
//  ContentView.swift
//  advent_of_code_pos
//
//  Created by Tobias Furtlehner on 12.12.19.
//  Copyright © 2019 Tobias Furtlehner. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @State var resultPartOne:Int = 0
    @State var resultPartTwo:Int = 0
    
    let dayOne = DayOne()
    
    
    var body: some View {
        ZStack {
            VStack (alignment: HorizontalAlignment.center, spacing: 20) {
                HStack (spacing: 10){
                    Button(action: {
                            DispatchQueue.main.async {
                                self.resultPartOne = self.dayOne.partOne()
                                self.resultPartTwo = self.dayOne.partTwo()
                            }
                        }) {
                        Text("Day 1")
                            .foregroundColor(Color.black)
                            .frame(width: 125, height: 40, alignment: .center)
                            .background(Color.blue)
                    }
                    
                    .cornerRadius(10)
                }
                Spacer()
                VStack (spacing: 5){
                    Text("Part 1: \(resultPartOne)")
                        .bold()
                    Text("Part 2: \(resultPartTwo)")
                        .bold()
                }
                .padding(.bottom, 20)
            }
            .padding(.top, 50)
        }
        .background(
            Image("background")
                .resizable()
                .scaledToFill()
        )
        .edgesIgnoringSafeArea(.all)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
