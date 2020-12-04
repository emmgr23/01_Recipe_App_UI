//
//  CustomTabBar.swift
//  01_Recipe_App_UI
//
//  Created by emm on 03/12/2020.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: String
    
    var body: some View {
        HStack {
            TabButton(title: "Home", selectedTab: $selectedTab)
            Spacer(minLength: 0)
            Button(action: {}) {
                Image(systemName: "plus")
                    .font(.title)
                    .foregroundColor(Color("plusIcon"))
                    .padding(.vertical)
                    .padding(.horizontal, 25)
                    .background(Color("orange"))
                    .cornerRadius(15)
                
            }
            Spacer()
            TabButton(title: "Saved", selectedTab: $selectedTab)
        }
        .padding(.top)
        .padding(.horizontal, 22)
        .padding(.bottom,UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 15 : UIApplication.shared.windows.first?.safeAreaInsets.bottom)
        .background(Color("BackgroundBTN"))
        .clipShape(CustomCorner(corners: [.topLeft,.topRight], size: 55))
        .shadow(color: Color.primary.opacity(0.05), radius: 5, x: 0, y: -5)
    }
}


struct TabButton: View {
    var title: String
    @Binding var selectedTab: String
    var body: some View {
        Button(action: {selectedTab = title}) {
            HStack(spacing: 10) {
                Image(title)
                    .renderingMode(.template)
                Text(title)
                    .fontWeight(.semibold)
            }
            .foregroundColor(selectedTab == title ? Color("yellow") : .secondary)
            .padding(.vertical, 10)
            .padding(.horizontal, 15)
            .background(Color("yellow").opacity(selectedTab == title ? 0.15 : 0 ))
            .clipShape(Capsule())
        }
    }
}
//struct CustomTabBar_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomTabBar()
//    }
//}
