//
//  Promises.swift
//  Promise
//
//  Created by Matt Galloway on 17/06/2014.
//  Copyright (c) 2014 Swift Promises. All rights reserved.
//

import Foundation

class Promise<I, O> {
  
  class func succeed(value: O) -> Promise<I, O> {
    
  }
  
  class func fail(error: String) -> Promise<I, O> {
    
  }
  
  typealias SuccessClosure = (value: O) -> Promise
  typealias FailClosure = (error: String) -> Promise
  
  func then(succeed: SuccessClosure, fail: FailClosure) -> Promise<I, O> {
    
  }
  
}
