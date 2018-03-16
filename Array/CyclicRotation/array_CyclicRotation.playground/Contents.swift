//: Playground - noun: a place where people can play

import UIKit


//let arrayInput : inout [Int] = [3, 8, 9, 7, 6];
let k =  3;

public func solution(_ A : [Int], _ K : Int) -> [Int] {
    // write your code in Swift 3.0 (Linux)
    let n = A.count
    var arr = A;

    if arr.count == 0 {
        return arr;

    }

    for i in 0 ..< n {
        let indexs = (n*K+i-K) % n
        arr[i] = A[indexs]
    }

    return arr

}
