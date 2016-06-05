package leap

func IsLeapYear(year int) bool {
	return (StandardLeapYear(year) && NotCentury(year)) || CenturyLeapYear(year)
}

func StandardLeapYear(year int) bool {
	return year%4 == 0
}

func NotCentury(year int) bool {
	return year%100 != 0
}

func CenturyLeapYear(year int) bool {
	return year%400 == 0
}
