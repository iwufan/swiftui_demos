//
//  PokemonList.swift
//  PokeMaster
//
//  Created by davidjia on 2021/11/8.
//

import SwiftUI

struct PokemonList: View {
    
    @State var expandingIndex: Int?
    
    var body: some View {
//        List(PokemonViewModel.all) { pokemon in
//                PokemonInfoRow(model: pokemon, expanded: false)
//        }
        ScrollView {
            LazyVStack {
                ForEach(PokemonViewModel.all) { pokemon in
                        PokemonInfoRow(
                            model: pokemon,
                            expanded: self.expandingIndex == pokemon.id
                        )
                        .onTapGesture {
                            withAnimation (
                                .spring(
                                    response: 0.55,
                                    dampingFraction: 0.425,
                                    blendDuration:0
                                )
                            ) {
                                if self.expandingIndex == pokemon.id {
                                    self.expandingIndex = nil
                                } else {
                                    self.expandingIndex = pokemon.id
                                }
                            }
                        }
                }
            }
        }.overlay(
            VStack {
                Spacer()
                PokemonInfoPanel(model: .sample(id:1))
            }.edgesIgnoringSafeArea(.bottom)
        )
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
