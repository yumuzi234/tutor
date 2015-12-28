import (
	"fmt"
)

func main() {
	var a = 33
	fmt.PrintInt(a)
	fmt.Println()

	var b int = 33
	fmt.PrintInt(b)
	fmt.Println()

	var c uint = 33
	fmt.PrintUint(c)
	fmt.Println()

	d := 33
	fmt.PrintInt(d)
	fmt.Println()

	e := uint(33)
	fmt.PrintUint(e)
	fmt.Println()
}
