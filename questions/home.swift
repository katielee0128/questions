//
//  home.swift
//  questions
//
//  Created by Scholar on 7/14/23.
//

import SwiftUI

struct home: View {
    var body: some View {
            NavigationStack {
                VStack (spacing: 35){
                    Text("🤗")
                        .font(.largeTitle)
                    
                    Text("Take this Quiz!")
                        .font(.largeTitle)
                        .fontWeight(.medium)
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Click to Start")
                    }
                }
            }
        }
    }

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
