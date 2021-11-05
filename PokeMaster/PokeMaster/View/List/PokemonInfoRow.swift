//
//  PokemonInfoRow.swift
//  PokeMaster
//
//  Created by davidjia on 2021/11/5.
//

import SwiftUI

struct ToolButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.system(size: 25))
            .foregroundColor(.white)
            .frame(width: 30, height: 30)
    }
}

struct PokemonInfoRow: View {
    
    let model = PokemonViewModel.sample(id: 1)
    
    var body: some View {
        VStack {
            HStack {
                Image("Pokemon-\(model.id)")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .aspectRatio(contentMode: .fit)
                    .shadow(radius: 4)
                Spacer()
                VStack(alignment: .trailing) {
                    Text(model.name)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.white)
                    Text(model.nameEN)
                        .font(.subheadline)
                        .foregroundColor(.white)
                }
            }
            .padding(.top, 12)
            HStack(spacing:20) {
                Spacer()
                Button {
                    print("fav")
                } label: {
                    Image(systemName: "star")
                        .modifier(ToolButtonModifier())
                }
                Button {
                    print("panel")
                } label: {
                    Image(systemName: "chart.bar")
                        .modifier(ToolButtonModifier())
                }
                Button {
                    print("web")
                } label: {
                    Image(systemName: "info.circle")
                        .modifier(ToolButtonModifier())
                }

            }
            .padding(.bottom, 12)
        }
        .frame(height: 120)
        .padding(.leading, 23)
        .padding(.trailing, 15)
        .background(.green)
    }
}

struct PokemonInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        PokemonInfoRow()
    }
}