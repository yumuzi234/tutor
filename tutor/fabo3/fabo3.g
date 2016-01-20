import (
	"fmt"
)

func fabo(n int) int {
	a, b := 0, 1
	for i := 0; i < n; i++ {
		a, b = b, a + b
	}
	return a
}

func main() {
	fmt.PrintInt(fabo(10))
	fmt.Println()
}
