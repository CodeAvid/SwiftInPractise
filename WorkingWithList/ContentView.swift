//
//  ContentView.swift
//  WorkingWithList
//
//  Created by Benjamin Akhigbe on 19/06/2024.
//

import SwiftUI


struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
}

struct RestaurantRow: View {
    var restaurant: Restaurant

    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
    
}

struct ContentView: View {
    let restaurants = [
        Restaurant(name: "Kingfisher"),
        Restaurant(name: "Sailor's lounge"),
        Restaurant(name: "Quay Lagos"),
        Restaurant(name: "taj lagos")
    ]
    
    var body: some View {
       
        VStack {
            //created a dyanamic content using ForEach method
            List {
                ForEach(restaurants){ restaurant in
                    RestaurantRow(restaurant: restaurant)
                }
            }
            
            //Alternative approach is to use rowContent available in list
            List(restaurants, rowContent: RestaurantRow.init)
            
        }
        
     

    }
}

#Preview {
    ContentView()
}


