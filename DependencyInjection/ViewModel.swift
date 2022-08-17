//
//  ViewModel.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import Foundation

protocol ViewModel {
    associatedtype Input
    associatedtype Output
    
    var input: Input { get }
    var output: Output { get }
}

protocol ViewModelInput { }
protocol ViewModelOutput { }

struct GenericViewModelInput: ViewModelInput { }
struct GenericViewModelOuput: ViewModelOutput { }

struct DefaultGenericViewModel<Input: ViewModelInput, Output: ViewModelOutput>: ViewModel {
    var input: GenericViewModelInput
    var output: GenericViewModelOuput
    
    init() {
        self.input = GenericViewModelInput()
        self.output = GenericViewModelOuput()
    }
}
