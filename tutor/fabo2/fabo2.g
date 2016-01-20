import (
    "fmt"
)
func fabo(i int) (int, int) {
    if i == 0 return 0, 1
    a, b := fabo(i - 1)
    return b, a + b
}

func main() {
    res, _ := fabo(10)
    fmt.PrintInt(res)
    fmt.Println()
}
