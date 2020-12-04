//
//  Recipe.swift
//  01_Recipe_App_UI
//
//  Created by emm on 02/12/2020.
//

import SwiftUI

struct Recipe {
    var image: String
    var title: String
    var detail: String
    var rating: String
    var type: String
    var color: Color
}

var recipes = [
Recipe(image: "r1", title: "Mexican Egg Mix", detail: "A gentle combination of carefully chosen veggie with a Mexican taste.", rating: "3.5", type: "easy", color: Color("yellow")),
    Recipe(image: "r2", title: "Italian Baked Dish", detail: "Italian based spicy and green beans together with cheese", rating: "4.3", type: "hard", color: Color("yellow"))
]

var categories = ["Fruits", "Meats", "Sushi", "Fries"]
