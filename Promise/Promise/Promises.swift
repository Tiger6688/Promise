//
//  Promises.swift
//  Promise
//
//  Created by Matt Galloway on 17/06/2014.
//  Copyright (c) 2014 Swift Promises. All rights reserved.
//

import Foundation

class Promise<T> {
  
  typealias SucceedClosure = (value: T) -> Void
  typealias FailClosure = (error: String) -> Void
  typealias Resolver = (succeed: SucceedClosure, fail: FailClosure) -> Void
  
  class func succeed(v: T) -> Promise<T> {
    let resolver: Resolver = { (succeed: (value: T) -> Void, fail: (error: String) -> Void) -> Void in
      succeed(value: v)
    }
    return Promise<T>(closure: resolver)
  }
  
  class func fail(e: String) -> Promise<T> {
    let resolver: Resolver = { (succeed: (value: T) -> Void, fail: (error: String) -> Void) -> Void in
      fail(error: e)
    }
    return Promise<T>(closure: resolver)
  }
  
  func then(succeed: SucceedClosure, fail: FailClosure) -> Void {
  }
  
  let closure: Resolver
  
  init(closure: Resolver) {
    self.closure = closure
  }
  
}
