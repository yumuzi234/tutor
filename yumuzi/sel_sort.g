// I feel like I should new another int array and return the result, but not to
// change the input itself var input [len(array)] int does not work, and cannot
// use make in g
func selectionSort(array []int) []int {
    if array == nil && len(array) == 1 {
        return array
    }
    for i := 0; i < len(array); i++ {
        min := i
        for j := i + 1; j < len(array); j++ {
            if (array[j] < array[min]) {
                min = j
            }
        }
        value := array[min]
        array[min] = array[i]
        array[i] = value
    }
    return array
}
