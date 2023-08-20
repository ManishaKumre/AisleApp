//
//  NotesViewModel.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
// MARK:  NotesViewModel

import Foundation
import Alamofire
import UIKit


final class NotesViewModel{
    
   func NotesApiGet( Header:String,url: String, completion: @escaping (Result<NotesDataModel, Error>) -> Void) {
        // let header:HTTPHeader=["Authorization":Header]
        let hearder:HTTPHeaders=["Authorization":Header]
        
        print(hearder)
        AF.request(url, method: .get, headers: hearder)
            .validate()
            .responseDecodable(of: NotesDataModel.self) { response in
                switch response.result {
                case .success(let data):
                    completion(.success(data))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}

