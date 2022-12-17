import Foundation

//func get
//
//for i in apartments {
//    array.append(sortedArr.price)
//}
//
//for apartment in apartments {
//    array.append(apartment.price)
//}
//
//
//for apartment in apartments {
//    array.append(apartment.price)
//}


struct Apartment {

    var address: String

    var price: Int

    var bedrooms: Double

}

 

let apartments = [

Apartment(address: "123 Lexington Ave", price: 1500, bedrooms: 0),

Apartment(address: "128 10th Ave", price: 2500, bedrooms: 2),

Apartment(address: "125 1st Ave", price: 1600, bedrooms: 1),

Apartment(address: "126 3rd Ave", price: 1000, bedrooms: 1)

]





//sorted arr by price low -> high

//append[]

//return

func getNLowestPrices1(n: Int, apartments: [Apartment]) -> [Int] {
// the orignal way that I was doing on interview

    var resArr = [Int]()

    

    var sortedArr = apartments.sorted(by: { $0.price < $1.price })

   

    for i in 0..<n {
            resArr.append(sortedArr.price) // this is wrong

    }

    

    return resArr

}

func getNLowestPrices2(n: Int, apartments: [Apartment]) -> [Int] {
    // this is the way We did on that day

    var resArr = [Int]()

    

    var sortedArr = apartments.sorted(by: { $0.price < $1.price })

   

    for i in 0..<n {

        if i >= 0 && i < apartments.count {

            resArr.append(sortedArr[i].price)

        }

    }

    

    return resArr

}



func getNLowestPrices3(n: Int, apartments: [Apartment]) -> [Int] {
    // this is the way In my mind try to implement it

    var resArr = [Int]()

    

    var sortedArr = apartments.sorted(by: { $0.price < $1.price })

   //use a for-in loop to iterate through the array’s contents.
    // no need worry about the array boundry and saft index any more
    var i = 0
    for apartment in sortedArr {
        if i < n {
            resArr.append(apartment.price)
        }
       i += 1

    }

    return resArr

}





let actural = getNLowestPrices3(n: 2, apartments: apartments)



let expected = [1000,1500]



func assertEqual (_ actural : [Int], _ expected : [Int] ) -> String {

    if actural.count != expected.count {

        return "fail, the expect answer should be \(expected) , but got \(actural)"

    }

    

    for i in 0..<actural.count {

        if actural[i] != expected[i] {

            return "fail, the expect answer should be \(expected) , but got \(actural)"

        }

    }

    return "pass"

}



assertEqual(actural, expected)

