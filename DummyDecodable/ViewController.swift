//
//  ViewController.swift
//  DummyDecodable
//
//  Created by Lay Channara on 6/21/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let firstDictionary: [String: Any] = ["id": 1101, "name": "Washing Machine", "price": "534.99"]
        do {
            let data = try JSONSerialization.data(withJSONObject: firstDictionary)
            let product = try JSONDecoder().decode(Product.self, from: data)
            print(product.id)
            print(product.name)
            print(product.price.value)
        } catch {
            print(error.localizedDescription)
        }
        
        print("--------")
        
        let secondDictionary: [String: Any] = ["id": 1121, "name": "Smart TV Sony A95K", "price": 1899.99]
        do {
            let data = try JSONSerialization.data(withJSONObject: secondDictionary)
            let product = try JSONDecoder().decode(Product.self, from: data)
            print(product.id)
            print(product.name)
            print(product.price.value)
        } catch {
            print(error.localizedDescription)
        }
    }
}

