//
//  ViewModel.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import Foundation

struct MainViewModelInput: ViewModelInputType {
  var inputtext: String
}

struct MainViewModelOutput: ViewModelOutputType {
  var outputtext: String
}

struct MainViewModel<Input: ViewModelInputType, Output: ViewModelOutputType>: ViewModelType {
  
  var input: MainViewModelInput
  var output: MainViewModelOutput
  
  private var repository: MainRepository?
  
  init(repository: MainRepository) {
    self.repository = repository
    
    input = MainViewModelInput(inputtext: "ionpuit")
    output = MainViewModelOutput(outputtext: "out0utp")
  }
  
  func display() -> String? {
    return repository?.load
  }
}
