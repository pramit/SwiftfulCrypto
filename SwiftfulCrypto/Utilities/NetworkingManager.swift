//
//  NetworkingManager.swift
//  SwiftfulCrypto
//
//  Created by Pramit Rashinkar on 8/22/23.
//

import Foundation
import Combine

class NetworkingManager {
    
    enum NetworkingError: LocalizedError {
        case badURLResponse(url: URL)
        case unknown
        
        var errorDescription: String? {
            switch self {
            case .badURLResponse(url: let url): return "[🔥] Bad response from URL: \(url)."
            case .unknown: return "[⚠️] Unknown error occured."
            }
        }
    }
    
    // generic download function
    static func download(url: URL) -> AnyPublisher<Data, Error> {
        return URLSession.shared.dataTaskPublisher(for: url)
            //.subscribe(on: DispatchQueue.global(qos: .default)) -- dataTaskPublisher already puts it in background thread
            .tryMap({ try handleURLResponse(output: $0, url: url) })
            .retry(3) // try downloading data 3 times, otherwise it'll hig through errors
            //.receive(on: DispatchQueue.main) -- have subscribers switch back to main thread
            .eraseToAnyPublisher()
    }
    
    // separated out of download function above
    static func handleURLResponse(output: URLSession.DataTaskPublisher.Output, url: URL) throws -> Data {
        guard
            let response = output.response as? HTTPURLResponse,
              response.statusCode >= 200 && response.statusCode < 300
        else {
            print(output)
            throw NetworkingError.badURLResponse(url: url)
        }
        return output.data
    }
    
    // generic sink handleCompletion function
    static func handleCompletion(completion: Subscribers.Completion<Error>) {
        switch completion {
        case.finished:
            break
        case .failure(let error):
            print(error.localizedDescription)
        }
        
        // Subscribers.Completion<Publishers.Decode<AnyPublisher<Data, Error>, [CoinModel], JSONDecoder>.Failure>
    }
}
