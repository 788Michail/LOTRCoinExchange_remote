//
//  CurrencyTip.swift
//  LOTRCoinExchange
//
//  Created by Michail on 5/2/24.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
        
    var message: Text? {
        Text("You can tap the Left or Right currency to bring up the Select Currency screen.")
    }
}
