import UIKit

//MARK: - Insertion Sort

var numbers = [70, 36, 40, 95, 22, 55, 26]

for index in 1..<numbers.count
{
    let value = numbers[index]
    var position = index

    while position > 0 && numbers[position - 1] > value {
        numbers[position] = numbers[position - 1]
        position -= 1
    }

    numbers[position] = value
}

print(numbers)

//MARK: - Insertion Sort Step
numbers = [70, 36, 40, 95, 22, 55, 26]
print("We're going to sort these numbers: \(numbers)")

for index in 1..<numbers.count
{
    let value = numbers[index]
    var position = index

    print("- Inspecting value: \(value) at position: \(position)")

    while position > 0 && numbers[position - 1] > value
    {
        print("-- \(numbers[position-1]) > \(value), so shifting \(numbers[position-1]) to the right")

        numbers[position] = numbers[position - 1]
        position -= 1
 
        print("-> \(numbers)")
    }

    print("-- Found sorted position of \(value) is \(position), so inserting")

    numbers[position] = value

    print("-> \(numbers)")
    print("")
}

print(numbers)

//MARK: - Insertion sort anything
print("")
print("Insertion Sort any thing: ")
func insertionSort<T: Comparable>(_ input: [T], by comparision: (T, T) -> Bool) -> [T] {
    var item = input
    
    for index in 1..<item.count {
        let value = item[index]
        var position = index
        
        while position > 0 && comparision(item[position - 1], value) {
            item[position] = item[position - 1]
            position -= 1
        }
        
        item[position] = value
    }
    return item
}

var sorted = insertionSort([70, 36, 40, 95, 22, 55, 26], by: >)
var names = insertionSort(["Marvin", "Arthur", "Zaphod", "Trillian", "Eddie"], by: { $0 > $1 })

print(sorted)
print(names)

//MARK: - Selection Sort
print("")
numbers = [70, 36, 40, 95, 22, 55, 26]
print("Selection Sort with \(numbers)")

for index in 0..<numbers.count - 1 {
    var min = index
    
    var j = index + 1
    while j < numbers.count {
        if numbers[min] > numbers[j] {
            min = j
        }
        j += 1
    }
    
    numbers.swapAt(index, min)
}

print(numbers)

//MARK: - Bubble Sort
print("")
numbers = [70, 36, 40, 95, 22, 55, 26]
print("Bubble Sort with \(numbers)")

var i = numbers.count - 1
while i > 0 {
    var j = 0
    while j < i {
        if numbers[j] > numbers[j+1] {
            numbers.swapAt(j, j+1)
        }
        j += 1
    }
    i -= 1
}

print(numbers)
