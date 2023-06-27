//
//  ContentView.swift
//  Avocados
//
//  Created by Patrick Masterson on 10/19/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    var headers: [Header] = headersData
    var facts: [Fact] = factData
    var recipes: [Recipe] = recipeData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // MARK: - Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                        
                    }
                }
                
                // MARK: - Dishes
                Text("Avocado Dishes")
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth: 640)

                
                // MARK: - Avocado Facts
                Text("Avocado Facts")
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { fact in
                            FactsView(fact: fact)
                               
                        }
                    }
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                    
                }
                
                // MARK: - Recipe Cards
                Text("Avocado Recipes")
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { rec in
                        RecipeCardView(recipe: rec)
                    }
                }
                .frame(maxWidth: 640) // ipad purposes
                .padding(.horizontal)
                
                // MARK: - Footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .modifier(TitleModifier())
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .ignoresSafeArea()
        .padding(0)
    }
}


struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factData, recipes: recipeData)
    }
}
