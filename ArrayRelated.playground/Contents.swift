import UIKit

//1) How do you find the missing number in a given integer array of 1 to 100?

let intArray = [1, 3, 4, 5, 7, 8, 10]

func findMissingElementFromAnArray(elementArray: [Int]) -> [Int]{
    
    var missingArry = [Int]()
    for indexElement in 1...10 {
        var isExist: Bool = false
        
        for item in elementArray {
            if(indexElement == item){
                isExist = true
                break
            }
        }
        
        if !isExist {
            missingArry.append(indexElement)
        }
    }
    
    return missingArry
}


//findMissingElementFromAnArray(elementArray: intArray)



//2) How do you find the duplicate number on a given integer array?
let duplicateArray = [1, 3, 4, 3, 7, 8, 10, 1]

func findDuplicateNumInAnArray(duplicateArray: [Int]) -> [Int] {
    
    var getUnique = [Int]()
    var getDuplicate = [Int]()
    
    for index in 0...duplicateArray.count-1 {
        let element = duplicateArray[index]
        if (getUnique.contains(element)) {
            getDuplicate.append(element)
        }
        else {
            getUnique.append(element)
        }
    }
    return getDuplicate
}


//findDuplicateNumInAnArray(duplicateArray: duplicateArray)


//2) Remove duplicates element in a sorted array without contains API.

let sortedDuplicateArr = [1, 3, 4, 4, 7, 8, 8]

func removeDupElementFromSortedArr(array: [Int]) -> [Int]{
    var uniqueArr = [Int]()
    for index in 0...array.count-2 {
        
        if (array[index] != array[index+1]){
            uniqueArr.append(array[index])
        }
    }
    uniqueArr.append(array[array.count-1])
    return uniqueArr
}


//removeDupElementFromSortedArr(array: sortedDuplicateArr)



//2) Reverse the array withour using extra space (space means without using second array. you have only one array system which contains the original array.)

let reverseArr = [1, 3, 5, 7, 8, 9]

func reverseArrayWithoutUsingSpace(array: [Int]) -> [Int]{
    
    var reverseArr = array
    
    var startIndex = 0
    var lastIndex = reverseArr.count-1
    
    while startIndex < lastIndex {
        
        let startVal = reverseArr[startIndex]
        
        reverseArr[startIndex] = reverseArr[lastIndex]
        reverseArr[lastIndex] = startVal
                
        startIndex += 1
        lastIndex -= 1
    }
    
    return reverseArr
}

//reverseArrayWithoutUsingSpace(array: reverseArr)


// Bubble Sort [compares adjacent elements and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted.]

let unsortedArray = [2, 5, 3, 7, 1, 4, 8]
//[2, 5, 3, 7, 1, 4, 8]
//[2, 5, 3, 7, 1, 4, 8]
//[2, 5, 3, 7, 1, 4, 8]
//[2, 5, 3, 7, 1, 4, 8]
//[2, 5, 3, 7, 1, 4, 8]

func bubbleSort(array: [Int]) -> [Int]{
    
    var unsortedArry = array
        
    for _ in array {
        //var startIndex = 0
        
        for index in 0...array.count-2 {
            
            if (unsortedArry[index] > unsortedArry[index+1]){
                //swap
                let startTempVal = unsortedArry[index]
                unsortedArry[index] = unsortedArry[index+1]
                unsortedArry[index+1] = startTempVal
            }
            //startIndex += 1
            print(unsortedArry)
        }
        print("=======================================")
        print(unsortedArry)
    }
    
    return unsortedArry
}


bubbleSort(array: unsortedArray)

