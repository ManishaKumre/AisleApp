//
//  PhoneNumViewModel.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//

// MARK:  PhoneNumViewModel
import Foundation
import Alamofire
import UIKit

final class PhoneNumViewModel{
    
    func login(number: String, url: String, completion: @escaping (Result<PhoneNumDataModel, Error>) -> Void) {
            let parameters: Parameters = [
                "number": number
                
            ]
print(parameters)
            AF.request(url, method: .post, parameters: parameters)
                .validate()
                .responseDecodable(of: PhoneNumDataModel.self) { response in
                    switch response.result {
                    case .success(let data):
                        completion(.success(data))
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
        }
}
