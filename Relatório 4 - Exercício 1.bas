package main
import "fmt"
func classificar_numero(num int) int {
	if num < 0 {
		return -1
	} else if num == 0 {
		return 0
	} else {
		return 1
	}
}
func main() {
	var num int
	var result int
	fmt.Println("Digite um número: ")
	fmt.Scan(&num)
	result = classificar_numero(num)
	if result == -1 {
		fmt.Println("O número é negativo")
	} else if result == 0 {
		fmt.Println("O número é zero")
	} else {
		fmt.Println("O número é positivo")
	}
}
