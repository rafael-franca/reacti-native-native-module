//
//  Counter.swift
//  CounterApp
//
//  Created by Rafael França on 02/08/24.
//

import Foundation

@objc(Counter)
class Counter: RCTEventEmitter {
  private var count = 0
  
  @objc
  override func constantsToExport() -> [AnyHashable : Any]! {
    return ["initialCount": 0]
  }
  
  @objc
  override static func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  @objc
  func increment() {
    count += 1
    print("count is \(count)")
    
    sendEvent(withName: "onIncrement", body: ["count": count])
  }
  
  @objc
  func decrement() {
    count -= 1
    print("count is \(count)")
    
    sendEvent(withName: "onDecrement", body: ["count": count])
  }
  
  @objc
  func getCount(_ callback: RCTResponseSenderBlock) {
    callback([count])
  }
  
  override func supportedEvents() -> [String]! {
    return ["onIncrement", "onDecrement"]
  }
}
