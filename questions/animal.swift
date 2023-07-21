//
//  animal.swift
//  questions
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct animal: View {
    @State private var answer = "❓"
    var body: some View {
        NavigationStack {
            VStack (spacing:35){
                Text("What is your favorite animal?")
                    .font(.title)
                    .fontWeight(.medium)
                Button("Dog") {
                    answer = "🐶"
                }.buttonStyle(.borderedProminent).tint(.brown)
                
                Button("Cat") {
                    answer = "🐱"
                }.buttonStyle(.borderedProminent).tint(.yellow)
                
                Button("Pig") {
                    answer = "🐷"
                }.buttonStyle(.borderedProminent).tint(.pink)
                
                Text(answer)
                    .font(.largeTitle)
            }.toolbar {
                ToolbarItemGroup(placement:.status){
                    NavigationLink(destination: food()) {Text("Next Question")
                    }
                }
            }
        }
    }
}

struct animal_Previews: PreviewProvider {
    static var previews: some View {
        animal()
    }
}
