func mergeSort(dat, array []int) {
    if len(array) != len(dat) return
    if dat == nil && len(dat) == 1 return 
    start := 0
    end := len(dat)
    split(dat, array, start, end)
}

func split(dat, array []int, start, end int) {
    if end - start < 2 return 
    mid := start + (end - start) / 2
    split(dat, array, start, mid)
    split(dat, array, mid, end)
    merge(dat, array, start, mid, end)
}

func merge(dat, array []int, start, mid, end int) {
    i := start
    j := mid
    cur := start
    for cur < end {
        if (i < mid && dat[i] <= dat[j]) || j >= end {
            array[cur] = dat[i]
            i++
        } else {
            array[cur] = dat[j]
            j++
        }
        cur++
    }
    for k := start; k < end; k++ {
        dat[k] = array[k]
    }
}
