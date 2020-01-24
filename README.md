# Recursion

Recursion: in computer science and Swift this is the process whereby a function calls itself. A recursive function must have a **base case** and the **recursive call**. 

```swift 
func countDownToSwiftVersion1(_ n: Int) {
  guard n > 0 else { return } // base case
  print("Swift Version \(n)")
  countDownToSwiftVersion1(n - 1) // recursive call
}
countDownToSwiftVersion1(5)

/*
 Swift Version 5
 Swift Version 4
 Swift Version 3
 Swift Version 2
 Swift Version 1
*/
```

Introduction to recursion and visualizing function calls being placed on the call stack using breakpoints. 

#### Recursion is introduced using a single view application and showing how each recursive call is placed on the call stack. 
[ViewController](https://github.com/alexpaul/Recursion/blob/master/Recursion/ViewController.swift)

#### The playground file is used to illustration the benefits of dynamic programming (memoization and recursion) 
[Playground](https://github.com/alexpaul/Recursion/blob/master/Playground.playground/Contents.swift)
