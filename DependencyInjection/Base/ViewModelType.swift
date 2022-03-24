//
//  ViewModelType.swift
//  DependencyInjection
//
//  Created by 김민창 on 2022/03/24.
//

import Foundation

protocol ViewModelType {
  associatedtype Input
  associatedtype Output
  
  var input: Input { get }
  var output: Output { get }
}

protocol ViewModelInputType { }

protocol ViewModelOutputType { }
