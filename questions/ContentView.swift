//
//  ContentView.swift
//  questions
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct ContentView: View {
    @State private var answer = "❓"
    var body: some View {
        NavigationStack {
            VStack (spacing: 35) {
                Text("What is your favorite color?")
                    .font(.title)
                    .fontWeight(.medium)
                
                Button("Blue") {
                    answer = "💙"
                }.buttonStyle(.borderedProminent).tint(.blue)
                Button("Pink") {
                    answer = "🩷"
                }.buttonStyle(.borderedProminent).tint(.pink)
                Button("Green") {
                    answer = "💚"
                }.buttonStyle(.borderedProminent).tint(.green)
                
                Text(answer)
                    .font(.largeTitle)
                
            }.toolbar {
                ToolbarItemGroup(placement:.status){
                    NavigationLink(destination: animal()) {Text("Next Question")
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
