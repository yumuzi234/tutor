import (
    "fmt"
)
func fabo(i int) int {
    if i == 0 return 0
    if i == 1 return 1
    return fabo(i - 1) + fabo(i - 2)
}

func main() {
    fmt.PrintInt(fabo(10))
    fmt.Println()
}
