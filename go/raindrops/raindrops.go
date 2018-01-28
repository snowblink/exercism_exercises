package raindrops

import (
	"strconv"
)

var factors = map[int]string{
	3: "Pling",
	5: "Plang",
	7: "Plong",
}

// Convert a number to a string, the contents of which depend on the number's factors.
//
// - If the number has 3 as a factor, output 'Pling'.
// - If the number has 5 as a factor, output 'Plang'.
// - If the number has 7 as a factor, output 'Plong'.
// - If the number does not have 3, 5, or 7 as a factor,
//   just pass the number's digits straight through.
func Convert(n int) string {
	var result string
	keys := [3]int{3, 5, 7}

	for _, key := range keys {
		if n%key == 0 {
			result += factors[key]
		}
	}

	if len(result) == 0 {
		result = strconv.Itoa(n)
	}
	return result
}
