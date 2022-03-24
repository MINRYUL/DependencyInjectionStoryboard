//
//  BaseViewController.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import Foundation
import UIKit
//VMI: ViewModelInputType, VMO: ViewModelInputType
class BaseViewController<VM: ViewModelType>: DefaultViewController {
  var viewModel: VM?
  
  required init?(coder: NSCoder, viewModel: VM? = nil) {
    self.viewModel = viewModel
    super.init(coder: coder)
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }
  
  class func instantiate(
    viewModel: VM,
    storyboardName: String,
    identifier: String,
    bundle: Bundle? = nil
  ) -> BaseViewController? {
    let storyBoard = UIStoryboard.init(name: storyboardName, bundle: bundle)
      let viewController = storyBoard.instantiateViewController(
          identifier: identifier
      ) {
          Self(coder: $0, viewModel: viewModel)
      } as? BaseViewController
      
      return viewController
  }
}

class DefaultViewController: UIViewController {
  var coder: NSCoder?
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }
}
