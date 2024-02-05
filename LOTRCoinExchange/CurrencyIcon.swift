//
//  CurrencyIcon.swift
//  LOTRCoinExchange
//
//  Created by Michail on 1/2/24.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    let currencyName: String
    
    var body: some View {
        
        // Currency Icons
        ZStack(alignment: .bottom) {
            // Currency Image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            // Currency Name
            Text(currencyName)
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.black.opacity(0.6))
                .foregroundStyle(.white.gradient)
        }
        .padding(3)
        .frame(width: 100, height: 100)
        .background(.black.opacity(0.6))
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .copperpenny, currencyName: "Copper Penny")
}
