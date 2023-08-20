//
//  OTPViewModel.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//
// MARK: OTPViewModel

import Foundation
import Alamofire
import UIKit

final class OTPViewModel{

func OTPVerify(parameters: [String:Any], url: String, completion: @escaping (Result<OTPDataModel, Error>) -> Void) {
           
print(parameters)
            AF.request(url, method: .post, parameters: parameters)
                .validate()
                .responseDecodable(of: OTPDataModel.self) { response in
                    switch response.result {
                    case .success(let data):
                        completion(.success(data))
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
        }
}
