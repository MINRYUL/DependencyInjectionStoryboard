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
        identifier: String,
        creator: ((NSCoder) -> UIViewController?)? = nil
    ) -> UIViewController? {
        
        var viewController: UIViewController? = nil
        
        if #available(iOS 13.0, *) {
            guard creator != nil else {
                return self.storyBoard.instantiateViewController(
                    identifier: identifier
                )
            }
            
            viewController = self.storyBoard.instantiateViewController(
                identifier: identifier
            ) {
                creator?($0)
            }
            
        } else {
            viewController = self.storyBoard.instantiateViewController(
                withIdentifier: identifier
            )
            
            guard creator != nil else {
                return viewController
            }
            
            guard let baseViewController = viewController as? BaseViewController,
                  let coder = baseViewController.coder else {
                return viewController
            }
            
            viewController = creator?(coder)
            
        }
        
        return viewController
    }
}

