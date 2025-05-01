//
//  Calculate.swift
//  HappiPlan
//
//  Created by Marcelo Campos on 30/04/25.
//

import Foundation

struct Calculate {
    let foodKgs: Double
    let cakeKgs: Double
    let juiceLts: Double
    let sodaLts: Double
    let waterLts: Double
}

func calculatePartyPlan(adults: Int, children: Int, duration: Int) -> Calculate {
    
    //Food
    let totalFoodGrams = (adults * 450) + (children * 250)
    let foodKgs = Double(totalFoodGrams) / 1000.0
    
    //Cake
    let totalCakeGrams = (adults * 120) + (children * 80)
    let cakeKgs = Double(totalCakeGrams) / 1000.0
    
    //Beverage
    let totalDrinkMls = (adults * 500 * duration) + (children * 300 * duration)
    let juiceLts = Double(totalDrinkMls) * 0.4 / 1000.0
    let sodaLts = Double(totalDrinkMls) * 0.3 / 1000.0
    let waterLts = Double(totalDrinkMls) * 0.3 / 1000.0
    
    return Calculate(foodKgs: foodKgs, cakeKgs: cakeKgs, juiceLts: juiceLts, sodaLts: sodaLts, waterLts: waterLts)
    
}
