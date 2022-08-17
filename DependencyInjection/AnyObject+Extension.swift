//
//  AnyObject+Extension.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/08/17.
//

import Foundation

extension NSObject {
    static var className: String {
        return String(describing: self)
    }
}
