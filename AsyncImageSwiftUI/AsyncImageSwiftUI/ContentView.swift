//
//  ContentView.swift
//  AsyncImageSwiftUI
//
//  Created by Bertuğ Horoz on 15.11.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack{
                AsyncImage(url: URL(string: "https://fabrikbrands.com/wp-content/uploads/Avengers-Logo-2.png")!) { image in
                    image.resizable().frame(width: 380, height: 300, alignment: .center)
                } placeholder: {
                    ProgressView()
                }

                List(superHeroArray){superhero in
                    Text(superhero.name).font(.title3)
                }.navigationTitle("Super Hero Book")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
