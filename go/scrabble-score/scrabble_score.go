package scrabble

import "strings"

// Score returns the scrabble score for a word
func Score(word string) int {
	total := 0

	scores := map[string]int{
		"d": 2,
		"g": 2,
		"b": 3,
		"c": 3,
		"m": 3,
		"p": 3,
		"f": 4,
		"h": 4,
		"v": 4,
		"w": 4,
		"y": 4,
		"k": 5,
		"j": 8,
		"x": 8,
		"q": 10,
		"z": 10,
	}

	for _, letter := range strings.ToLower(word) {
		if score, ok := scores[string(letter)]; ok {
			total += score
		} else {
			total++
		}

	}
	return total
}
