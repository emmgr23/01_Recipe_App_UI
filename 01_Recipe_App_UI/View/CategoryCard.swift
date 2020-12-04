//
//  CategoryCard.swift
//  01_Recipe_App_UI
//
//  Created by emm on 03/12/2020.
//

import SwiftUI

struct CategoryCard: View {
    
    var title: String
    
    var body: some View {
        VStack(spacing: 20) {
            Image(title)
                .padding()
                .background(Color("BackgroundBTN"))
                .clipShape(Circle())
            
            Text(title)
                .fontWeight(.bold)
                .foregroundColor(Color("orange"))
        }
        .padding(.vertical)
        .padding(.horizontal, 10)
        .background(Color("yellow").opacity(0.2))
        .clipShape(Capsule())
    }
}



