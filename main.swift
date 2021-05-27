//
//  Binary & Decimal & Hexadecimal Converter
//
//  Created by deathlezz on 24/05/2021.
//


import Foundation


print("* Welcome to Binary & Decimal & Hexadecimal Converter *")
print()
print("Select operation:")
print("[1] Binary       ->  Decimal")
print("[2] Decimal      ->  Binary")
print("[3] Hexadecimal  ->  Decimal")
print("[4] Decimal      ->  Hexadecimal")
print("[5] Hexadecimal  ->  Binary")
print("[6] Binary       ->  Hexadecimal")
    
func converter() {
    
    print()
    print("Enter your choice:")
            
    if let operation = Int(readLine()!) {
            
        if operation == 1 {     // binary -> decimal
                
            func BTD() {
            
                print()
                print("Binary:")
                
                if let binaryToDecimal = Int(readLine()!, radix: 2) {     // user input (0 or 1)
                    
                    if binaryToDecimal >= 0 {
                    
                        print()
                        print("Decimal:")
                        print(binaryToDecimal)     // final output
                        print()
                            
                    } else {
                        print()
                        print("* Enter 0 or 1 *")
                        return BTD()
                    }
                    
                } else {
                    print()
                    print("* Value out of binary range *")
                    return BTD()
                }
                
            }
            
            BTD()
                
        } else if operation == 2 {     // decimal -> binary
            
            func DTB() {
            
                print()
                print("Decimal:")
                    
                if let decimalToBinary = Int(readLine()!) {     // user input >= 0
                    
                    if decimalToBinary >= 0 {
                    
                        let convert = String(decimalToBinary, radix: 2)     // convert decimal to binary
                        
                        print()
                        print("Binary:")
                        print(convert)     // final output
                        print()
                        
                    } else {
                        print()
                        print("* Enter value >= 0 *")
                        return DTB()
                    }
                    
                } else {
                    print()
                    print("* Value out of decimal range *")
                    return DTB()
                }
                
            }
            
            DTB()
                
        } else if operation == 3 {     // hexadecimal -> decimal
                
            func HTD() {
                
                print()
                print("Hexadecimal:")
            
                let hexToDecimal = readLine()!     // user input (a - f, 0 - 9)
                
                if let convert = UInt64(hexToDecimal, radix: 16) {     // convert hex to decimal
                        
                    print()
                    print("Decimal:")
                    print(convert)     // final output
                    print()
                        
                } else {
                    print()
                    print("* Value out of hexadecimal range *")
                    return HTD()
                }
            
            }
            
            HTD()
            
        } else if operation == 4 {     // decimal -> hexadecimal
            
            func DTH() {
                
                print()
                print("Decimal:")
                
                if let decimalToHex = Int(readLine()!) {     // user input (0 - 9)
                    
                    if decimalToHex >= 0 {
                    
                        let convert = String(decimalToHex, radix: 16)     // convert decimal to hex
                        
                        print()
                        print("Hexadecimal:")
                        print(convert)     // final output
                        print()
                        
                    } else {
                        print()
                        print("* Enter value >= 0 *")
                        return DTH()
                    }
                    
                } else {
                    print()
                    print("* Value out of decimal range *")
                    return DTH()
                }
                
            }
            
            DTH()
                
        } else if operation == 5 {     // hexadecimal -> binary
                
            func HTB() {
                
                print()
                print("Hexadecimal:")
                
                let hexToBinary = readLine()!     // user input (a - f, 0 - 9)
                    
                if let convert = UInt64(hexToBinary, radix: 16) {
                    
                    let convert2 = String(convert, radix: 2)     // convert hex to binary
                        
                    print()
                    print("Binary:")
                    print(convert2)     // final output
                    print()
                        
                } else {
                    print()
                    print("* Value out of hexadecimal range *")
                    return HTB()
                }
                
            }
            
            HTB()
                
        } else if operation == 6 {     // binary -> hexadecimal
                
            func BTH() {
                
                print()
                print("Binary:")
                
                if let binaryToHex = Int(readLine()!, radix: 2) {     // user input (0 or 1)
                    
                    if binaryToHex >= 0 {
                    
                        let convert = String(binaryToHex, radix: 16)     // convert binary to hex
                        
                        print()
                        print("Hexadecimal:")
                        print(convert)     // final output
                        print()
                        
                    } else {
                        print()
                        print("* Enter 0 or 1 *")
                        BTH()
                    }
                    
                } else {
                    print()
                    print("* Value out of binary range *")
                    BTH()
                }
                
            }
            
            BTH()
                
        } else {
            print()
            print("* Enter value 1 - 6 *")
            converter()
        }
            
    } else {
        print()
        print("* Enter value 1 - 6 *")
        converter()
    }

}

converter()
