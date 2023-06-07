//
//  TapBar.swift
//  FPS
//
//  Created by almayo ibrahim  on 07/06/2023.
//

import SwiftUI

struct TapBar: View {
    var body: some View {
        
        HStack {
            Spacer()
            Button {
            // action
            } label: {
                Image(systemName: "house")
            }
            Spacer()
            Button {
            // action
            } label: {
                Image(systemName: "house")
            }
            Spacer()
            Button {
            // action
            } label: {
                Image(systemName: "house")
            }
            Spacer()
            Button {
            // action
            } label: {
                Image(systemName: "house")
            }
            Spacer()
        }
        .frame(width: 300, height: 40, alignment: .center)
        .cornerRadius(100)
        .foregroundColor(Color.white)
        
        .background(.green)
        
    }
}

struct TapBar_Previews: PreviewProvider {
    static var previews: some View {
        TapBar()
    }
}
