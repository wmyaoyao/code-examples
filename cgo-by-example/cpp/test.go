package main

import (
	"fmt"
)

// #cgo LDFLAGS: -L . -lc_test -lstdc++
// #cgo CFLAGS: -I ./
// #include "c.h"
import "C"

func main() {
	fmt.Println("# Calling C wrappers")
	C.func1()
	C.func2()
	fmt.Println("# Bye")
}
