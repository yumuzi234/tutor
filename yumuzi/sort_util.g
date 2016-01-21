var testData [30]int
var testBuf [30]int

func fillTestData(dat []int) {
    n := len(dat)
    for i := 0; i < n; i++ {
        dat[i] = i * 53 % n
    }
}

func checkTestData(dat []int) {
    n := len(dat)
    for i := 1; i < n; i++ {
        if dat[i - 1] > dat[i] {
            panic()
        }
    }
}

func checkSeqTestData(dat []int) {
    n := len(dat)
    for i := 0; i < n; i++ {
        if dat[i] != i {
            panic()
        }
    }
}
