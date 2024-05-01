//
//  HapticManager.swift
//  SwiftfulCrypto
//
//  Created by Pramit Rashinkar on 8/23/23.
//

import Foundation
import SwiftUI

class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
}
