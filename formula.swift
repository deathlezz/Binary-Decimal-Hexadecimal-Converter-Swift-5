//
//  Binary & Decimal & Hex formula
//
//  Created by deathlezz on 29/05/2021.
//


// binary -> decimal
let binaryToDecimal = Int("1011110", radix: 2)
print(binaryToDecimal!)     // 94


// decimal -> binary
let decimalToBinary = String(94, radix: 2)
print(decimalToBinary)     // 1011110


// hex -> decimal
let hexToDecimal = Int("abcdef", radix: 16)
print(hexToDecimal!)     // 11259375


// decimal -> hex
let decimalToHex = String(11259375, radix: 16)
print(decimalToHex)     // abcdef


// hex -> binary
let hexToBinary = String(Int("abc", radix: 16)!, radix: 2)
print(hexToBinary)     // 101010111100


// binary -> hex
let binaryToHex = String(Int("101010111100",radix: 2)!, radix: 16)
print(binaryToHex)     // abc
