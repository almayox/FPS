//
//  CategoryGrid.swift
//  FPS
//
//  Created by almayo ibrahim  on 07/05/2023.
//

import SwiftUI

struct CategoryGrid: View {
    @State var data = Categories(id: Id(), name: Name(), photo: Photo())
    
    func getData() {
        let urlString = "https://fps.vantabox.online/wp-json/wc/v3/products/categories"
        let url = URL(string: urlString)
        
        URLSession.shared.dataTask(with: url!) {data, _, error in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    let decodedData = try decoder.decode(Categories.self, from: data)
                    self.data = decodedData
                }
                catch {
                    print("decoding error! Check the json")
                }
            }
        }
    }
    
   //---------------------------------------------
    

    var body: some View {
        
        let columns = Array(
            repeating: GridItem(.flexible(), spacing: 10), count: 2
        )

        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(0..<6) {category in
                    Button {
                        // action
                    } label: {
                        // image goes here
                        Text("\(data.name.name)")
                    }

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
