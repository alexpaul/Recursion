//
//  ViewController.swift
//  Recursion
//
//  Created by Alex Paul on 1/23/20.
//  Copyright © 2020 Alex Paul. All rights reserved.
//

import UIKit

// use breakpoints in the function bodies to see the call stack as functions are being called and placed on the stack

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
  
  
  @IBAction func performOperations(_ sender: UIButton) {
    //recurse(7)
    //countDownToZero(from: 20)
    let factorialResult = factorial(4)
    print(factorialResult)
  }
  
  // example 1
  func recurse(_ n: Int) {
    guard n > 0 else {
      return
    } // base case
    print("hi")
    recurse(n - 1) // recursive call - 6, 5, 4, 3, 2, 1,
  }
  
  // example 2
  func countDownToZero(from num: Int) {
    guard num >= 0 else { return }// base case
    print(num) // 20, 19....
    countDownToZero(from: num - 1) // recursive call
    // countDownToZero(19)
    // countDownToZero(18)
    // countDownToZero(0)
  }
  
  // example - factorial
  // formula for finding factorial is n * (n - 1)
  // factorial is used to find the number of permutations of a given is this case number
  func factorial(_ n: Int) -> Int {
    guard n > 1 else {
      return 1
    } // base case
    return n * factorial(n - 1) // recursive call
    // 4 * factorial(3) -> 24
    // 3 * factorial(2) -> 6
    // 2 * factorial(1) -> 2
    // factorial(1) -> 1
  }
  
}

