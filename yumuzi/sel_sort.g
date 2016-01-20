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
