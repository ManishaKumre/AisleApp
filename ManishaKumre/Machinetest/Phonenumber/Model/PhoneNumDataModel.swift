//
//  PhoneNumDataModel.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
// MARK:  PhoneNumDataModel

import Foundation
struct PhoneNumDataModel : Codable {
    let status : Bool?

    enum CodingKeys: String, CodingKey {

        case status = "status"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = try values.decodeIfPresent(Bool.self, forKey: .status)
    }

}
