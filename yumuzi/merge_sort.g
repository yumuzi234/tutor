func mergeSort(dat, buf []int) {
    n := len(dat)
    if n != len(buf) {
        panic()
    }
    if n <= 1 return
    mid := n / 2
    mergeSort(dat[:mid], buf[:mid])
    mergeSort(dat[mid:], buf[mid:])
    merge(dat, buf, mid)
}

func merge(dat, buf []int, mid int) {
    i := 0
    j := mid
    cur := 0
    n := len(dat)
    for cur := 0; cur < n; cur++ {
        if j >= n || (i < mid && dat[i] < dat[j]) {
            buf[cur] = dat[i]
            i++
        } else {
            buf[cur] = dat[j]
            j++
        }
    }
    for i := 0; i < n; i++ {
        dat[i] = buf[i]
    }
}
