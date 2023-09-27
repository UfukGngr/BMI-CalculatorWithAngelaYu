//
//  CalculatorBrain.swift
//  BMI Calculator

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    
    mutating func calculateBMI(height : Float, weight : Float ){
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, color: UIColor.blue , advice: "Eat more pies!")
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, color: UIColor.green, advice: "Fit as a fiddle!")
        }else{
            bmi = BMI(value: bmiValue, color:  UIColor.red , advice: "Eat less pies!")
        }
    }
    
    func getBMIValue() -> String{
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    
}
