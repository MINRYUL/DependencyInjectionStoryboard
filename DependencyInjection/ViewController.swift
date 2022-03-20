//
//  ViewController.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet weak var label: UILabel!
    
}
    
final class GenericViewController<R: Repository>: ViewController {
        
    static func instantiate(viewModel: ViewModel<R>) -> ViewController? {
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewController = storyBoard.instantiateViewController(
            identifier: "ViewController"
        ) {
            GenericViewController(coder: $0, viewModel: viewModel)
        } as? ViewController
        
        return viewController
    }
    
    init?(coder: NSCoder, viewModel: ViewModel<R>) {
        super.init(coder: coder)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("use instantiate(param:) instead")
    }
    
    private var viewModel: ViewModel<R>?
    
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
    

