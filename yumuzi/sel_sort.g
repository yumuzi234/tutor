// selectionSort sorts dat in place.
func selectionSort(dat []int) {
    n := len(dat)
    if n <= 1 return
    for i := 0; i < n; i++ {
        min := i
        for j := i + 1; j < n; j++ {
            if (dat[j] < dat[min]) {
                min = j
            }
        }
        if min == i continue
        dat[min], dat[i] = dat[i], dat[min]
    }
}
