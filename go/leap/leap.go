package leap

func IsLeapYear(year int) bool {
	if (StandardLeapYear(year) && NotCentury(year)) || CenturyLeapYear(year) {
		return true
	} else {
		return false
	}
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
