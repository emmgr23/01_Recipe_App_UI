//
//  RecipeCard.swift
//  01_Recipe_App_UI
//
//  Created by emm on 02/12/2020.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: Recipe
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Spacer(minLength: 0)
                Image(recipe.image)
            }
            .padding(.bottom)
            
            
            Text(recipe.title)
                .font(.title)
                .foregroundColor(.primary)
            
            HStack(spacing: 12) {
                Label(title: {
                    Text(recipe.rating)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }) {
                    Image(systemName: "star.fill")
                        .font(.caption)
                        .foregroundColor(Color("orange"))
                }
                .padding(.vertical, 5)
                .padding(.horizontal, 10)
                .background(recipe.color.opacity(0.4))
                .cornerRadius(5)
                
                
                Text(recipe.type)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                    .background(recipe.color.opacity(0.4))
                    .cornerRadius(5)
            } //hstack
            
            
            Text(recipe.detail)
                .foregroundColor(.secondary)
                .lineLimit(4)
            
            
            HStack(spacing: 0) {
                ForEach(4...7, id: \.self) {i in
                    Image("p\(i)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 25, height: 25)
                        .clipShape(Circle())
                    //overlay Effect:
                        .offset(x: -CGFloat(i) * 8)
                }
                .offset(x: 33)
                
                Text("23+ Likes")
                    .font(.caption)
                    .foregroundColor(.secondary)
                //Moving Text And Giving Space...
                    .padding(.leading, -(3) * 5)
            } //hstack
            .padding(.bottom)
            
            
            HStack {
                Spacer(minLength: 0)
                Button(action: {}) {
                    Label(title: {
                        Text("Save")
                            .font(.system(size: 15, weight: .bold))
                            .foregroundColor(Color("ButtonSave"))
                    }){
                        Image(systemName: "suit.heart.fill")
                            .font(.body)
                            .foregroundColor(Color("orange"))
                    }
                    .padding(.vertical, 8)
                    .padding(.horizontal, 10)
                    .background(Color("BackgroundBTN"))
                    .clipShape(Capsule())
                }
            }
            
        } //vstack
        .padding(.horizontal)
        // max width...
        .frame(width: UIScreen.main.bounds.width / 2)   
        .background(
            recipe.color.opacity(0.2)
                .cornerRadius(25)
                .padding(.top, 55)
                .padding(.bottom, 15)
        )
        .cornerRadius(25)
    } // body
}


