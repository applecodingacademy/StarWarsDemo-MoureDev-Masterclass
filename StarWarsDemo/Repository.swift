//
//  Repository.swift
//  StarWarsDemo
//
//  Created by Julio César Fernández Muñoz on 3/9/24.
//

import Foundation

protocol DataRepository {
    var url: URL { get }
}

extension DataRepository {
    func getData() throws -> [StarCard] {
        let data = try Data(contentsOf: url)
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode([StarCardDTO].self, from: data).map(\.toCard)
    }
}

struct Repository: DataRepository {
    var url: URL {
        Bundle.main.url(forResource: "StarWars", withExtension: "json")!
    }
}

struct RepositoryTest: DataRepository {
    var url: URL {
        Bundle.main.url(forResource: "StarWars Test", withExtension: "json")!
    }
}
