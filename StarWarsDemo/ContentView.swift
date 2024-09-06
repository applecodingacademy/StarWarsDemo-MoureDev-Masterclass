//
//  ContentView.swift
//  StarWarsDemo
//
//  Created by Julio César Fernández Muñoz on 3/9/24.
//

import SwiftUI

struct ContentView: View {
    @State var vm = StarCardVM()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(vm.cards) { card in
                    StarCardView(card: card)
                }
            }
            .navigationTitle("Star Wars")
        }
    }
}

#Preview {
    ContentView(vm: StarCardVM(repository: RepositoryTest()))
}
