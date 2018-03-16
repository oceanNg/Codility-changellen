//: Playground - noun: a place where people can play

import UIKit

// https://codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/
/*
 A non-empty zero-indexed array A consists of N integers. Each element of the array can be paired with another element that has the same value, except for one element that is left unpaired.

 For example
 A: 9, 3, 9, 3, 9, 7, 9
 the element at index 5 has value 7 and is unpaired

 Given an array A, return the value of the unpaired element.
 Assumptions:
 each element of array A is an integer within the range [1..1,000,000,000];
 all but one of the values in A occur an even number of times.
 time complexity is O(N);
 space complexity is O(1), beyond input storage (not counting the storage required for input arguments)
 */

//Solutions:

var str = "Hello, playground"

let firstBits: Int = 10
let otherBits: Int = 20
let outputBits = firstBits ^ otherBits  // equals 00010001



solution2([9, 3,1, 3, 9, 7,9, 8])
// way 1:
public func solution(_ A : [Int]) -> Int{
    var dis = [Int: Int] ();

    for (i, j) in A.enumerated() {

        if dis[j] != nil{
            dis.removeValue(forKey: j)

        }
        else{
            dis.updateValue(i, forKey: j)

        }
    }
    return dis.popFirst()?.key ?? 0;

   

}
//way 2

public func solution2(_ A : [Int]) -> Int {

    var z = 0

    for i in A {
        z ^= i
    }

    return z

//    if (A.count == 1) { return A[0] }
//    var oe = 0
//    //Since only one odd integer in the array
//    //so using Xor will balance all the pair numbers except the odd integer
//    for i in 0 ..< A.count {
//        oe ^= A[i] // Bitwise XOR Operator
//
//        print("oeae \(oe)")
//
//    }
//    return oe


}


