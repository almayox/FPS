//
//  CategoryGrid.swift
//  FPS
//
//  Created by almayo ibrahim  on 07/05/2023.
//

import SwiftUI

struct CategoryGrid: View {
    

    var body: some View {
        
        let columns = Array(
            repeating: GridItem(.flexible(), spacing: 10), count: 2
        )

        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(0..<10) { _ in
                    Image("placeholder")
                        .resizable()
                        .frame(width: 180, height: 200)
                        
                }
            }
            .padding(.horizontal, 10)
        }
    }
}


struct CategoryGrid_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGrid()
    }
}
