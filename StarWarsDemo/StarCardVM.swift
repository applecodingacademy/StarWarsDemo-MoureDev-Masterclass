//
//  StarCardVM.swift
//  StarWarsDemo
//
//  Created by Julio César Fernández Muñoz on 3/9/24.
//

import SwiftUI

@Observable
final class StarCardVM {
    let repository: DataRepository
    
    var cards: [StarCard]
    
    init(repository: DataRepository = Repository()) {
        self.repository = repository
        do {
            cards = try repository.getData()
        } catch {
            cards = []
        }
    }
}
