//
//  TabBar.swift
//  FPS
//
//  Created by almayo ibrahim  on 07/05/2023.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case message
    case person
    case leaf
    case gearshape
}

struct TabBar: View {
    
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".fill"
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: tab == selectedTab ? fillImage : tab.rawValue)
                        .scaleEffect(tab == selectedTab ? 1.5 : 1.0)
                        .foregroundColor(tab == selectedTab ? .white  .opacity(1.0) : .white .opacity(0.5))
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
                
            }
            .frame(width: nil, height: 60)
            .background(Color("PrimaryGreen"))
            .cornerRadius(100)
            .padding()
        }
    }
    }


struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(selectedTab: .constant(.house))
    }
}
