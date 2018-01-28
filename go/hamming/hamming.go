// Package hamming for finding distance between DNA strands
package hamming

import "errors"

// Distance counts the number of differences between two homologous DNA strands
// to get a measure of the minimum number of point mutations
func Distance(a, b string) (int, error) {
	if len(a) != len(b) {
		return -1, errors.New("The strands are not of equal length")
	}

	result := 0
	for i := 0; i < len(a); i++ {
		if a[i] != b[i] {
			result++
		}
	}

	return result, nil
}
