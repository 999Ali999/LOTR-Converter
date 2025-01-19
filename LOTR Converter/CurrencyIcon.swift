//
//  CurrencyIcon.swift
//  LOTR Converter
//
//  Created by Ali Shafiei on 19/01/25.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    let currencyName: String
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(currencyImage)
                .resizable()
                .scaledToFit()
            
            Text(currencyName)
                .padding(1)
                .font(.caption)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.80))
        }
        .padding(3)
        .frame(width: 115, height: 110)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .goldpiece, currencyName: "Gold Piece")
}
