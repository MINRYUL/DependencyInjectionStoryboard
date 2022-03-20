//
//  ViewModel.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import Foundation

struct ViewModel<R: Repository> {

    private var repository: R?
    
    init(repository: R) {
        self.repository = repository
    }
}
