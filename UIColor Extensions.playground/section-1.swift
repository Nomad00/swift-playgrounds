// Playground - noun: a place where people can play

import UIKit

public extension UIColor
{
    /**
    A convenience method to generate a UIColor from RGBa values.
    */
    func colorFromRGBaValuesRed(red: Float, green: Float, blue: Float, alpha: Float) -> UIColor
    {
        let cgRed = CGFloat(Double(red) / 255.0)
        let cgGreen = CGFloat(Double(green) / 255.0)
        let cgBlue = CGFloat(Double(blue) / 255.0)
        let cgAlpha = CGFloat(1.0)

        return UIColor(red: cgRed, green: cgGreen, blue: cgBlue, alpha: cgAlpha)
    }
}

let ared: Float = 0
let agreen: Float = 190
let ablue: Float = 190
let aalpha : Float = 1

let testColor = UIColor().colorFromRGBaValuesRed(ared, green: agreen, blue: ablue, alpha: aalpha)