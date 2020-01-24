import UIKit

// fibonacci

func fibonacci(_ n: Int) -> Int {
  guard n > 2 else { return 1 }
  return fibonacci(n - 1) + fibonacci(n - 2) // 6765 times (mutliple calls are repeated as the results are not cached)
}
fibonacci(20)


// fibonacci using dynamic programming

var fibDict = [Int: Int]()
func dynamicFibonacci(_ n: Int) -> Int {
  if let fibResult = fibDict[n] {
    return fibResult
  }
  guard n > 2 else {
    return 1
  }
  let fibResult = dynamicFibonacci(n - 1) + dynamicFibonacci(n - 2) // 18 times (way more efficient using dynamic programming as the results are cached and not repeated)
  fibDict[n] = fibResult
  return fibResult
}
dynamicFibonacci(20)
