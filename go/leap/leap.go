package leap

const testVersion = 2

// determine if given year is a leap year
func IsLeapYear(year int) bool {
	div_by_four := year%4 == 0
	div_by_hundred := year%100 == 0
	div_by_four_hundred := year%400 == 0
	return (div_by_four && !div_by_hundred) || div_by_four_hundred
}
