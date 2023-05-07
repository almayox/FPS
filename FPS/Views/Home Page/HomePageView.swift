//
//  HomePageView.swift
//  FPS
//
//  Created by almayo ibrahim  on 07/05/2023.
//

import SwiftUI

struct HomePageView: View {
    
    @State var selectedTab: Tab = .house
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            
            VStack {
                TabView(selection: $selectedTab) {
                    ForEach(Tab.allCases, id: \.rawValue) { tab in
                        HStack {
                            SliderBanner()
                              
                        }
                        .tag(tab)
                    }
                }
            }
            VStack {
                Spacer()
                TabBar(selectedTab: $selectedTab)
            }
        }
    }
}
struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
