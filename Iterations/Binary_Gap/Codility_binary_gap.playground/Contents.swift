//: Playground - noun: a place where people can play

import UIKit

 binary_gap(51712)

public func binary_gap(_ N : Int) -> Int {
    var number : Int  = N  ;
    var maxGap : Int  =  0;
    var currentGap : Int = 0;

    if ( number > 0 && number % 2 == 0){
        number =  number / 2 ;
    }
    while number > 0{

        number =  number / 2 ;

        if (number  % 2  != 0){
            if (currentGap > maxGap ){
                maxGap =  currentGap;

            }
            currentGap = 0;

        }else{
            currentGap = currentGap + 1;

        }

    }
    return maxGap;
}
