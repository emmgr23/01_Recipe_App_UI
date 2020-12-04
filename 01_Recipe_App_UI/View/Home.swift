//
//  Home.swift
//  01_Recipe_App_UI
//
//  Created by emm on 02/12/2020.
//

import SwiftUI

struct Home: View {
    @State var search = ""
    @State var selectedTab = "Home"
    
    var body: some View {
        
        
        VStack {
            
            //MARK: - burger menu & profile picture
            HStack {
                Button(action: {}) {
                    Image(systemName: "line.horizontal.3")
                        .font(.title)
                        .foregroundColor(.primary)
                }
                Spacer(minLength: 0)
                
                Button(action: {}) {
                    Image("profile")
                        .renderingMode(.original)
                        .clipShape(Circle())
                }
            }
            .padding([.horizontal, .bottom])
            .padding(.top, 10)
             
            
            //MARK: - search bar
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: -10) {
                    HStack(spacing: 15) {
                        HStack(spacing: 10) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.secondary)
                            
                            TextField("Search Recipe", text: $search)
                                
                        }
                        .padding()
                        .background(Color("yellow").opacity(0.2))
                        .cornerRadius(15)
                        
                        Button(action: {}) {
                            Image("filter")
                                .renderingMode(.original)
                                .padding()
                                .background(Color("yellow").opacity(0.2))
                                .cornerRadius(15)
                        }
                    }
                    .padding(.horizontal)
                    
                    
            //MARK: - Top Recipe
                    HStack {
                        Text("Top Recipes")
                        .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        Spacer(minLength: 0)
                    }
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(recipes, id: \.title) { recipe in
                                RecipeCard(recipe: recipe)
                            }
                        }
                        .padding(.horizontal)
                    }
                    
            //MARK: - menu bar button
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 15) {
                            ForEach(categories, id: \.self){ title in
                                CategoryCard(title: title)
                            }
                        }
                        .padding()
                    }
                    
                } // vstack
            }// scrollView
            CustomTabBar(selectedTab: $selectedTab)
        }//vstack
        .background(Color.black.opacity(0.05)
                        .ignoresSafeArea(.all, edges: .all))
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

//struct Home_Previews: PreviewProvider {
//    static var previews: some View {
//        Home()
//    }
//}
