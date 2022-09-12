//
//  ContentView.swift
//  FastingTimer
//
//  Created by Vijayaraghavan Sundararaman on 12/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8470588235))
                .ignoresSafeArea()
            
            content
        }
    }
    
    var content: some View {
        VStack {
            ProgressRing()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
