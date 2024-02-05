//
//  IconGrid.swift
//  LOTRCoinExchange
//
//  Created by Michail on 5/2/24.
//

import SwiftUI

struct IconGrid: View {
    @Binding var currency: Currency
    
    var body: some View {
        
        // Currency Icons
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            
            ForEach(Currency.allCases) { currency in
                if self.currency == currency {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay {
                            RoundedRectangle (cornerRadius: 25)
                                .stroke(lineWidth: 8)
                                .opacity(0.5)
                                .foregroundStyle(.red)
                        }
                } else {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            self.currency = currency
                        }
                }
            }
        }
    }
}

#Preview {
    IconGrid(currency: .constant(.silverPenny))
}
