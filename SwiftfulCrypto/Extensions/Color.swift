//
//  Color.swift
//  SwiftfulCrypto
//
//  Created by Pramit Rashinkar on 8/21/23.
//

import Foundation
import SwiftUI

extension Color {
    static let theme = ColorTheme()
    //static let theme = ColorTheme2() -- super easy to swap out theme! 
    static let launch = LaunchTheme()
}


struct ColorTheme {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
    // add new color themes as needed
}

// you can swap out themes
struct ColorTheme2 {
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
    // add new color themes as needed
}

struct LaunchTheme {
    let accent = Color("LaunchAccentColor")
    let background = Color("LaunchBackgroundColor")
}
