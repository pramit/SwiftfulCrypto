//
//  PortfolioDataService.swift
//  SwiftfulCrypto
//
//  Created by Pramit Rashinkar on 8/23/23.
//

import Foundation
import CoreData

class PortfolioDataService {
    private let container: NSPersistentContainer
    private let containerName: String = "PortfolioContainer"
    private let entityName: String = "PortfolioEntity"
    
    @Published var savedEntities: [PortfolioEntity] = []
    
    init() {
        container = NSPersistentContainer(name: containerName)
        container.loadPersistentStores { _, error in
            if let error = error {
                print("Error loading Core Data. \(error)")
            }
            self.getPortfolio()
        }
        
    }
    
    // MARK: Public functions
    
    func updatePortfolio(coin: CoinModel, amount: Double) {
        
//        if let entity = savedEntities.first(where: { savedEntity -> Bool in
//            return savedEntity.coinID == coin.id
//        }) { }
        
        // SHORTENED VERSION
        // check if coin is already in portfolio
        if let entity = savedEntities.first(where: { $0.coinID == coin.id }) {
            if amount > 0 {
                // if it exists and we add more than 0, update it
                update(entity: entity, amount: amount)
            } else {
                // if it exists and we add a negative amount, delete it
                delete(entity: entity)
            }
        } else {
            // if it's not there, add it
            add(coin: coin, amount: amount)
        }
    }
    
    
    // MARK: Private functions
    
    private func getPortfolio() {
        let request = NSFetchRequest<PortfolioEntity>(entityName: entityName)
        do {
            savedEntities = try container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching Portfolio Entities. \(error)")
        }
    }
    
    private func add(coin: CoinModel, amount: Double) {
        let entity = PortfolioEntity(context: container.viewContext)
        entity.coinID = coin.id
        entity.amount = amount
        
        applyChanges()
    }
    
    private func update(entity: PortfolioEntity, amount: Double) {
        entity.amount = amount
        applyChanges()
    }
    
    private func delete(entity: PortfolioEntity) {
        container.viewContext.delete(entity)
        applyChanges()
    }
    
    private func save() {
        do {
            try container.viewContext.save()
        } catch let error {
            print("Error saving to Core Data. \(error)")
        }
    }
    
    private func applyChanges() {
        save()
        getPortfolio()
    }
    
}
