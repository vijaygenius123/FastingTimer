//
//  ProgressRing.swift
//  FastingTimer
//
//  Created by Vijayaraghavan Sundararaman on 12/09/2022.
//

import SwiftUI

struct ProgressRing: View {
    @State var progress = 0.0
    var body: some View {
        ZStack{
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(.gray)
                .opacity(0.1)
            Circle()
                .trim(from: 0, to: min(progress, 1.0))
                .stroke(AngularGradient(gradient: Gradient(
                    colors: [Color(#colorLiteral(red: 0.2148656845, green: 1, blue: 0.9930461049, alpha: 1)), Color(#colorLiteral(red: 0.8808028102, green: 0.3950213492, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.9500332475, green: 0.7557682395, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))]
                ), center: .center),
                        style: StrokeStyle(lineWidth:15, lineCap: .round,
                                           lineJoin: .round))
                .rotationEffect(Angle(degrees: 270))
                .animation(.easeInOut(duration: 1.0), value: progress)
                
            
        }
        .frame(width: 250, height: 250)
        .padding()
        .onAppear {
        progress = 1
        }
        
    }
}

struct ProgressRing_Previews: PreviewProvider {
    static var previews: some View {
        ProgressRing()
    }
}
