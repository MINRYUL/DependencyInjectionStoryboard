//
//  BaseViewController.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import Foundation
import UIKit

class BaseViewController<VM: ViewModel>: UIViewController {
    private var viewModel: VM?
    
    static func instantiate(
        viewModel: VM,
        storyBoardName: String,
        identifier: String,
        bundle: Bundle? = nil
    ) -> BaseViewController? {
        let storyBoard = UIStoryboard.init(name: storyBoardName, bundle: bundle)
        let viewController = storyBoard.instantiateViewController(
            identifier: identifier
        ) as? Self
        
        viewController?.viewModel = viewModel
        return viewController
    }
}
