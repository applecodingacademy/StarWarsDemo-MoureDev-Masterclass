//
//  StarWarsDemoTests.swift
//  StarWarsDemoTests
//
//  Created by Julio César Fernández Muñoz on 3/9/24.
//

import Testing
@testable import StarWarsDemo

extension Tag {
    @Tag static var repository: Self
}

@Suite("Prueba del Repository de Star Cards", .tags(.repository))
struct StarWarsDemoTests {
    let repository = RepositoryTest()
    let viewModel = StarCardVM(repository: RepositoryTest())
    
    @Test("Prueba de carga de datos del repositorio")
    func dataLoad() throws {
        let data = try repository.getData()
        #expect(data.count == 4)
    }
    
    @Test("Prueba de carga de datos del ViewModel")
    func dataLoadVM() throws {
        #expect(viewModel.cards.count == 4)
    }
}
