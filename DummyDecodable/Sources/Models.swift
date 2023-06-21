//
//  Models.swift
//  DummyDecodable
//
//  Created by Lay Channara on 6/21/23.
//

import Foundation

enum DummyPrice: Decodable {
    
    case string(String)
    case double(Double)
    
    enum DummyPriceError: Error {
        case failure
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let value = try? container.decode(String.self) {
            self = .string(value)
        } else if let value = try? container.decode(Double.self) {
            self = .double(value)
        } else {
            throw DummyPriceError.failure
        }
    }
    
    var value: String {
        switch self {
        case .string(let string):
            return string
        case .double(let double):
            return "\(double)"
        }
    }
}

struct Product: Decodable {
    
    let id: Int
    let name: String
    let price: DummyPrice
}
