//
//  ViewController.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import UIKit
    
final class GenericViewController: BaseViewController<DefaultGenericViewModel<GenericViewModelInput, GenericViewModelOuput>> {
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureView()
        self.configureBinding()
    }
    
    private func configureView() {
        self.view.backgroundColor = .systemTeal
        
        self.label.text = "안녕하세요!"
    }
    
    private func configureBinding() { }
}
    

