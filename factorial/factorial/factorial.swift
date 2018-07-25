//
//  factorial.swift
//  factorial
//
//  Created by Andres Abraham Bonilla Gòmez on 24/07/18.
//  Copyright © 2018 beHere. All rights reserved.
//

import Foundation
import BigInt

class factorial
{
    func daFactorial(_ n: Int) -> BigInt
    {
        return (1 ... n).map { BigInt($0) }.reduce(BigInt(1), *)
    }
}
