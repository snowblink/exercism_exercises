// Package leap provides methods to deal with leap years.
package leap

const testVersion = 2

// IsLeapYear returns if a year is a leap year or not.
func IsLeapYear(year int) bool {
	divByFour := year%4 == 0
	divByHundred := year%100 == 0
	divByFourHundred := year%400 == 0
	return (divByFour && !divByHundred) || divByFourHundred
}
