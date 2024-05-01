//
//  String.swift
//  SwiftfulCrypto
//
//  Created by Pramit Rashinkar on 8/23/23.
//

import Foundation

extension String {
    
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
}
