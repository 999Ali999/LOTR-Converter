//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Ali Shafiei on 19/01/25.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                    }
                }
                
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                    
                
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .foregroundStyle(.white)
                .tint(.brown.mix(with: .black, by: 0.1))
                .font(.title)
                .padding()
            }
            .padding()
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency()
}
