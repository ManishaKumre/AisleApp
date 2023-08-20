//
//  ApiEndPoint.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//

import Foundation

enum ProductEndPoint {
    case products // Module - GET
    case addProduct(product: AddProduct) // POST
}

// https://fakestoreapi.com/products
extension ProductEndPoint: EndPointType {

    var path: String {
        switch self {
        case .products:
            return "products"
        case .addProduct:
            return "/users/phone_number_login"
        }
    }

    var baseURL: String {
        switch self {
        case .products:
            return "https://app.aisle.co/V1"
        case .addProduct:
            return "https://app.aisle.co/V1"
        }
    }

    var url: URL? {
        return URL(string: "\(baseURL)\(path)")
    }

    var method: HTTPMethods {
        switch self {
        case .products:
            return .get
        case .addProduct:
            return .post
        }
    }

    var body: Encodable? {
        switch self {
        case .products:
            return nil
        case .addProduct(let product):
            return product
        }
    }

    var headers: [String : String]? {
        APIManager.commonHeaders
    }
}
struct AddProduct: Codable {
    var number: String?
   
}
