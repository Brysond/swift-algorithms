import Foundation
func displayAlgorithms() {
    var testCase = [Int]()
    for _ in 0..<10 {
        testCase.append(Int.random(in: 0...100 ))
    }
    let binarySearchTestCase = [1,2,5,7,9,14,17,57]
    let sorting = Sorting()
    
    print("""
    
    Bubble Sort
        
    Bubble Sort goes through an array, and swaps values when they are not in the right order. It is not very efficient on large datasets
    Big O notation:
    Best Case: O(n) comparisons, O(1) swaps
    Average Case: O(n^2) comparisons, O(n^2) swaps
    Worst Case: O(n^2) comparisons, O(n^2) swaps
    Space Complexity: O(1)
    
    Input: \(testCase)
    Output: \(sorting.bubbleSort(data: testCase))
    
    Merge Sort
        
    Merge Sort divides the array in half until it is split into arrays of length 1, and then merges them back togther in the correct order.
    Big O notation:
    Best Case: O(n log n)
    Average Case: O(n log n)
    Worst Case: O(n log n)
    Space Complexity: O(n)
    Input: \(testCase)
    Output: \(sorting.mergeSort(unsortedArray: testCase))
    
    Quick Sort
        
    Quick Sort splits an array into a pivot (usually the first value), a high array, and a low array. It then recursively sorts the two arrays in the same way, and adds them back together, splicing the pivot in between the arrays.
    Big O notation:
    Best Case: O(n log n)
    Average Case: O(n log n)
    Worst Case: O(n^2)
    Space Complexity: O(n)
    Input: \(testCase)
    Output: \(sorting.quickSort(data: testCase))
    
    Insertion Sort
        
    Insertion Sort takes the first value of an array and adds it to a sorted array, then it goes through the unsorted array and adds the remaing values to the sorted array on either side of the first value, depending on their value. It repeats this until it is sorted.
    Big O notation:
    Best Case: O(n)
    Average Case: O(n^2)
    Worst Case: O(n^2)
    Space Complexity: O(n)
        
    Input: \(testCase)
    Output: \(sorting.insertionSort(data: testCase))
        
    """)
    
    print("""
    Linear Search
        
    Linear Search goes through every value in the array until the value it is on is the same as the value to be searched for.
    Big O notation:
    Best Case: O(1)
    Average Case: O(n)
    Worst Case: O(n)
    Space Complexity: O(1)
    Input: \(testCase)
    Target: 5
    """)
    if sorting.linearSearch(input: testCase) == true {
        print("Output: Value found!")
    } else {
        print("Output: Value not found")
    }
    
    print("""
    Binary Search
        
    Binary Search goes to the midpoint of an array and compares the value of the midpoint to the target, if it is the target it gets returned, otherwise, if the midpoint is less than the target, the lower half of the array is discarded, and if the midpoint is more than the target, the upper half is discarded.
    This is repeated until the target is found
    Binary search search only works on sorted lists.
    Big O notation:
    Best Case: O(1)
    Average Case: O(log n)
    Worst Case: O(log n)
    Space Complexity: O(1)
    
    Input: \(binarySearchTestCase)
    Target: 5
    """)
    
    
    if sorting.binarySearch(sortedArray: binarySearchTestCase) == true {
        print("Output: Value found!")
    } else {
        print("Output: Value not found")
    }
    
}
displayAlgorithms()
