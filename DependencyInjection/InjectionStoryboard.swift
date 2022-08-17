//
//  InjectionStoryboard.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import Foundation
import UIKit

typealias UIStoryboard = _DependencyInjectionStoryboard

final class _DependencyInjectionStoryboard {
    private let storyBoard: UIKit.UIStoryboard
    
    init(name: String, bundle: Bundle?) {
        self.storyBoard = UIKit.UIStoryboard.init(
            name: name,
            bundle: bundle
        )
    }
    
    func instantiateViewController(
        identifier: String
    ) -> UIViewController? {
        
        var viewController: UIViewController? = nil
        
        if #available(iOS 13.0, *) {
            return self.storyBoard.instantiateViewController(
                identifier: identifier
            )
            
        } else {
            viewController = self.storyBoard.instantiateViewController(
                withIdentifier: identifier
            )
            
        }
        
        return viewController
    }
}

