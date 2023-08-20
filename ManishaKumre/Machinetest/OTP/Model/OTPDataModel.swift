//
//  OTPDataModel.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//
//  MARK: OTPDataModel

import Foundation
struct OTPDataModel : Codable {
    let token : String?

    enum CodingKeys: String, CodingKey {

        case token = "token"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        token = try values.decodeIfPresent(String.self, forKey: .token)
    }

}
