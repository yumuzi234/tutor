func TestSelectionSort() {
    d := testData[:]
    fillTestData(d)
    selectionSort(d)
    checkTestData(d)
    checkSeqTestData(d)
}

func TestMergeSort() {
    dat := testData[:]
	buf := testBuf[:]
    fillTestData(dat)
    mergeSort(dat, buf)
    checkTestData(dat)
    checkSeqTestData(dat)
}
