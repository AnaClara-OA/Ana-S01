package main

import "fmt"

func fibonacci(n int) {
	a, b := 0, 1

	for i := 0; i < n; i++ {
		fmt.Print(a, " ")
		a, b = b, a+b
	}
	fmt.Println()
}

func main() {
	var num int

	fmt.Println("Digite um número: ")
	fmt.Scanln(&num)
	
	fibonacci(n)

}
