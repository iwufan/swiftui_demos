//
//  PokemonInfoPanelHeader.swift
//  PokeMaster
//
//  Created by davidjia on 2021/11/8.
//

import SwiftUI

extension PokemonInfoPanel {
    struct Header: View {
        let model: PokemonViewModel
        
        var body: some View {
            HStack(spacing: 18) {
                pokemonIcon
                nameSpecies
                verticalDivider
                VStack(spacing: 12) {
                    bodyStatus
                    typeInfo
                }
            }
        }
        
        var pokemonIcon: some View {
            Image("Pokemon-\(model.id)")
                .resizable()
                .frame(width: 68, height: 68)
        }
        
        var nameSpecies: some View {
            VStack(spacing: 10) {
                VStack() {
                    Text(model.name)
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(model.color)
                    Text(model.nameEN)
                        .font(.system(size: 13, weight: .bold))
                        .foregroundColor(model.color)
                }
                
                Text(model.genus)
                    .font(.system(size: 13, weight: .bold))
                    .foregroundColor(Color(hex: 0x666666))
            }
        }
        
        var verticalDivider: some View {
            RoundedRectangle(cornerRadius: 0.5)
                .foregroundColor(Color(hex: 0x000000, alpha: 0.1))
                .frame(width: 1, height: 44)
        }
        
        var bodyStatus: some View {
            VStack() {
                HStack() {
                    Text("身高")
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                    Text(model.height)
                        .font(.system(size: 11))
                        .foregroundColor(model.color)
                }
                HStack() {
                    Text("体重")
                        .font(.system(size: 11))
                        .foregroundColor(.gray)
                    Text(model.weight)
                        .font(.system(size: 11))
                        .foregroundColor(model.color)
                }
            }
        }
        
        var typeInfo: some View {
            HStack() {
                ForEach(model.types) { type in
                    ZStack() {
                        RoundedRectangle(cornerRadius: 7)
                            .fill(type.color)
                            .frame(width: 36, height: 14)
                        Text(type.name)
                            .foregroundColor(.white)
                            .font(.system(size: 10))
                    }
                }
            }
        }
    }
}
