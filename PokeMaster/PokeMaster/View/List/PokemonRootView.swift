//
//  PokemonRootView.swift
//  PokeMaster
//
//  Created by davidjia on 2021/11/8.
//

import SwiftUI

struct PokemonRootView: View {
    var body: some View {
        NavigationView {
            PokemonList().navigationTitle("宝可梦列表")
        }
    }
}

struct PokemonRootView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRootView()
    }
}
