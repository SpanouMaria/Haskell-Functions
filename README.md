# Haskell-Functions

This file contains various Haskell functions that handle geometric calculations, string manipulation, and list operations. Below is a detailed description of each main function.

## Functions

### 1. `area :: (Double, Double) -> (Double, Double) -> (Double, Double) -> Double`

The `area` function calculates the area of a triangle given the coordinates of its vertices.

- **Input**: Three vertices of the triangle, provided as coordinate pairs.
- **Output**: The area of the triangle as a `Double`.
- **Calculation**: Uses Heron's formula to compute the area.

### 2. `parking :: (Int, Int) -> (Int, Int) -> Int`

The `parking` function calculates the parking cost based on the duration between entry and exit times.

- **Input**: Entry and exit times, each represented as an hour-minute pair.
- **Output**: The parking cost as an `Int`.
- **Calculation**: Charges a variable rate depending on the duration.

### 3. `join :: String -> [String] -> String`

The `join` function concatenates a list of strings using a specified separator.

- **Input**: A separator `String` and a list of strings `[String]`.
- **Output**: A single `String` with each element of the list joined by the separator.
- **Usage**: Useful for merging strings with a consistent delimiter, such as creating a comma-separated list.

### 4. `kgcd :: Integer -> Integer -> Integer`

The `kgcd` function calculates the greatest common divisor (GCD) of two integers.

- **Input**: Two integers.
- **Output**: The GCD of the two integers as an `Integer`.
- **Calculation**: Uses the Euclidean algorithm to determine the GCD, which is useful for simplifying fractions and number theory applications.

### 5. `nearest :: Int -> [Int] -> Int`

The `nearest` function finds the closest number in a list to a specified target integer.

- **Input**: A target integer and a list of integers.
- **Output**: The integer from the list that is nearest to the target.
- **Usage**: Often used in applications where the best approximation or nearest match is needed.

### 6. `replace :: Eq a => a -> a -> [a] -> [a]`

The `replace` function replaces all instances of a specific element in a list with a new element.

- **Input**: The target element to replace, the replacement element, and the list to process.
- **Output**: A new list with the specified element replaced.
- **Usage**: Useful in scenarios where certain values need to be updated or substituted across a collection.

### 7. `generating :: Int -> Int -> [Int]`

The `generating` function generates a list of integers between two specified bounds.

- **Input**: Two integers representing the lower and upper bounds.
- **Output**: A list of integers within the specified range.
- **Usage**: Useful for creating ranges or sequences of integers for iteration or testing.

### 8. `mapi :: (Int -> a -> b) -> [a] -> [b]`

The `mapi` function applies a function to each element in a list, with the function also receiving the element’s index.

- **Input**: A function that takes an index and an element, and a list of elements.
- **Output**: A list of results where each element is processed by the provided function along with its index.
- **Usage**: Similar to `map` but includes the index, useful for cases where the position of each element is relevant.
