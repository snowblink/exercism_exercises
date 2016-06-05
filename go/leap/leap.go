// Leap stub file

// The package name is expected by the test program.
package leap

// testVersion should match the targetTestVersion in the test file.
const testVersion = 2

// It's good style to write a comment here documenting IsLeapYear.
func IsLeapYear(year int) bool {
	div_by_four := year % 4 == 0
	div_by_hundred := year % 100 == 0
	div_by_four_hundred := year % 400 == 0
	return (div_by_four && !div_by_hundred) || div_by_four_hundred
}
