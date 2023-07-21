//
//  food.swift
//  questions
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct food: View {
    @State private var answer = "❓"

    var body: some View {
        NavigationStack {
            VStack (spacing:35){
                Text("What is your favorite food?")
                    .font(.title)
                    .fontWeight(.medium)
                Button("Pizza") {
                    answer = "🍕"
                }.buttonStyle(.borderedProminent).tint(.red)
                
                Button("Salad") {
                    answer = "🥗"
                }.buttonStyle(.borderedProminent).tint(.green)
                
                Button("Fries") {
                    answer = "🍟"
                }.buttonStyle(.borderedProminent).tint(.yellow)
                
                Text(answer)
                    .font(.largeTitle)
                
            }.toolbar {
                ToolbarItemGroup(placement:.status){
                    NavigationLink(destination: home()) {Text("Start Over")
                    }
                }
            }
        }
    }
}

struct food_Previews: PreviewProvider {
    static var previews: some View {
        food()
    }
}
