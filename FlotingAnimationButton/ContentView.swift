//
//  ContentView.swift
//  FlotingAnimationButton
//
//  Created by Bhumika Patel on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var open = false
    
    var body: some View {
        ZStack{
            Button(action: { self.open.toggle()}){
                Image(systemName: "plus")
                    .rotationEffect(.degrees(open ? 45 : 0))
                    .foregroundStyle(.white)
                    .font(.system(size: 38, weight: .bold))
                    .animation(.spring(response: 0.2, dampingFraction: 0.4,blendDuration: 0))
            }
            .padding(24)
            .background(Color.pink)
            .mask(Circle())
            .shadow(color: .pink, radius: 10)
            .zIndex(10)
            
            SecondButton(open: $open, icon: "bubble.left.fill", offsetY: -90)
            SecondButton(open: $open, icon: "trash" ,offsetY: -170, delay: 0.2)
        }
    }
}

#Preview {
    ContentView()
}

struct SecondButton: View {
    @Binding var open: Bool
    var icon = "pencil"
   // var color = "blue"
    var offsetX = 0
    var offsetY = 0
    var delay = 0.0
    var body: some View {
        Button(action: {}){
            Image(systemName: icon)
                .foregroundStyle(.white)
                .font(.system(size: 16, weight: .bold))
            
                .padding()
                .background(.blue)
                .mask(Circle())
                .offset(x: open ? CGFloat(offsetX) : 0, y: open ? CGFloat(offsetY) : 0)
                .scaleEffect(open ? 1 : 0)
                .animation(Animation.spring(response: 0.2, dampingFraction: 0.5, blendDuration: 0).delay(Double(delay)))
        }
    }
}
