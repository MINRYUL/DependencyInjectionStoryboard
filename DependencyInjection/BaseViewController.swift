//
//  BaseViewController.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    var coder: NSCoder?
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.coder = coder
    }
}
