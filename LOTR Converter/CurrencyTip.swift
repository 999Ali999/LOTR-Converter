//
//  CurrencyTip.swift
//  LOTR Converter
//
//  Created by Ali Shafiei on 29/01/25.
//

import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap the left or right currency icon to change the currency")
    
    var image: Image? =
        Image(systemName: "hand.tap.fill")
}
