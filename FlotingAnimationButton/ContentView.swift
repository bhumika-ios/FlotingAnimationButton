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
                    .animation(.spring)
            }
            .padding()
            .background(Color.pink)
            .mask(Circle())
            .shadow(color: .pink, radius: 10)
            .zIndex(10)
        }
    }
}

#Preview {
    ContentView()
}
