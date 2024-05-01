//
//  StatisticView.swift
//  SwiftfulCrypto
//
//  Created by Pramit Rashinkar on 8/22/23.
//

import SwiftUI

struct StatisticView: View {
    
    let stat: StatisticModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(stat.title)
                .font(.caption)
                .foregroundColor(Color.theme.secondaryText)
            Text(stat.value)
                .font(.headline)
                .foregroundColor(Color.theme.accent)
            HStack {
                Image(systemName: "triangle.fill")
                    .font(.caption2)
                    .rotationEffect(Angle(degrees: (stat.percentageChange ?? 0) >= 0 ? 0 : 180))
                
                Text(stat.percentageChange?.asPercentString() ?? "")
                    .font(.caption)
                    .bold()
            }
            .foregroundColor((stat.percentageChange ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
            .opacity(stat.percentageChange == nil ? 0.0 : 1.0)
            
        }
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 20) {
            StatisticView(stat: dev.stat1)
                .padding()
                .background(Color.white)
                .shadow(radius: 5)
            StatisticView(stat: dev.stat2)
                .padding()
                .background(Color.white)
                .shadow(radius: 5)
            StatisticView(stat: dev.stat3)
                .padding()
                .background(Color.white)
                .shadow(radius: 5)
        }
    }
}
