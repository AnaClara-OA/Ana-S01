package main

import "fmt"

func main() {
	var num int

	fmt.Println("Digite um número: ")
	fmt.Scan(&num)

	result := num % 2

	switch result {
	case 0:
		fmt.Println("O número é par!")
	default:
		fmt.Println("O número é impar!")
	}

}
