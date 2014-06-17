//
//  Promises.swift
//  Promise
//
//  Created by Matt Galloway on 17/06/2014.
//  Copyright (c) 2014 Swift Promises. All rights reserved.
//

import Foundation

class Promise<T> {
  
  typealias Resolver = (succeed: (value: T), fail: (error: String))
  
  class func succeed(value: T) -> Promise<T> {
    let resolver: Resolver = { (succeed: (value: T), fail: (error: String)) in
      succeed(value)
    }
    return Promise<T>(closure: resolver)
  }
  
  class func fail(error: String) -> Promise<T> {
  }
  
  typealias SucceedClosure = (value: T) -> Promise
  typealias FailClosure = (error: String) -> Promise
  
  func then(succeed: SucceedClosure, fail: FailClosure) -> Promise<T> {
    
  }
  
  let closure: Resolver
  
  init(closure: Resolver) {
    self.closure = closure
  }
  
}
