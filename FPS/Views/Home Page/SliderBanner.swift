//
//  SliderBanner.swift
//  FPS
//
//  Created by almayo ibrahim  on 07/05/2023.
//

import SwiftUI

struct SliderBanner: View {
    
    private var numberOfImages:Int = 5 // counter of banners on
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
   @State var currentIndex = 0
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(0..<5) { num in
                Image("\(num)")
                    .resizable()
                    .scaledToFill()
                    .overlay(Color.black.opacity(0.2))
                    .tag(num)
            }
        }.tabViewStyle(PageTabViewStyle())
                .frame(width: .infinity, height: 250)
                .onReceive(timer, perform: { _ in
                    // set the next image
                    withAnimation{
                    currentIndex = currentIndex < numberOfImages ? currentIndex + 1 : 0
                    }
                })
    }
}

struct SliderBanner_Previews: PreviewProvider {
    static var previews: some View {
        SliderBanner()
    }
}
