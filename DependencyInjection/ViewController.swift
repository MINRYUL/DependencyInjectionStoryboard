//
//  ViewController.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import UIKit

class ViewController: BaseViewController<MainViewModel<MainViewModelInput, MainViewModelOutput>> {
  typealias VM = MainViewModel<MainViewModelInput, MainViewModelOutput>
  
  @IBOutlet weak var label: UILabel!
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }
  
  required init?(coder: NSCoder, viewModel: VM? = nil) {
    super.init(coder: coder, viewModel: viewModel)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.configureView()
    self.configureBinding()
  }
  
  private func configureView() {
    self.view.backgroundColor = .systemTeal
  }
  
  private func configureBinding() {
    guard let load = self.viewModel?.display() else {
      return
    }
    
    self.label.text = load
  }
}

