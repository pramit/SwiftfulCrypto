//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Pramit Rashinkar on 8/22/23.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
    
}
