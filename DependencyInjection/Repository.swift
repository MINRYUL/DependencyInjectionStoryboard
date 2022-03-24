//
//  Repository.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/20.
//

import Foundation

protocol MainRepository {
  var input: MainRepositoryInput { get set }
  var output: MainRepositoryOutput { get set }
  
  var load: String { get set }
}
struct MainRepositoryInput { }

struct MainRepositoryOutput { }

struct DefaultRepository: MainRepository {
  var input: MainRepositoryInput
  var output: MainRepositoryOutput
  
  init(load: String) {
    self.input = MainRepositoryInput()
    self.output = MainRepositoryOutput()
    
    self.load = load
  }

  
  var load: String
}
 
