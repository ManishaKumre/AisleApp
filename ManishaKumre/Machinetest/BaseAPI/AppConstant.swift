//
//  AppConstant.swift
//  Machinetest
//
//  Created by Manishakumre on 19/08/23.
//

import Foundation
import UIKit

struct Constants {

    static let baseUrl = "https://app.aisle.co/V1" //new

    static let themeColor = UIColor(red: 1, green: 0.953, blue: 0, alpha: 1)
}

extension UIResponder {
    func next<T:UIResponder>(ofType: T.Type) -> T? {
        let r = self.next
        if let r = r as? T ?? r?.next(ofType: T.self) {
            return r
        } else {
            return nil
        }
    }
}
