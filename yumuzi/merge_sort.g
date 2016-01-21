func mergeSort(dat, buf []int) {
    n := len(dat)
    if len(buf) < n {
        panic() // buf not big enough
    }
    if n <= 1 return
    mid := n / 2
    mergeSort(dat[:mid], buf)
    mergeSort(dat[mid:], buf)
    merge(dat, buf, mid)
}

func merge(dat, buf []int, mid int) {
    i := 0
    j := mid
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
