// Package bob simulates a lackadaisical teenager.
package bob

import (
	"regexp"
	"strings"
)

const whatever = "Whatever."
const chill = "Whoa, chill out!"
const sure = "Sure."
const calm = "Calm down, I know what I'm doing!"
const fine = "Fine. Be that way!"

// Hey is how you can talk to Bob.
func Hey(remark string) string {
	remark = strings.TrimSpace(remark)
	if isSilent(remark) {
		return fine
	}
	if isAQuestion(remark) {
		if isShouting(remark) && hasLetters(remark) {
			return calm
		}
		return sure
	}
	if isShouting(remark) && hasLetters(remark) {
		return chill
	}
	return whatever
}

func isShouting(s string) bool {
	return strings.ToUpper(s) == s
}

func isAQuestion(s string) bool {
	return s[len(s)-1:] == "?"
}

func hasLetters(s string) bool {
	r := regexp.MustCompile(`[[:alpha:]]`)
	return r.MatchString(s)
}

func isSilent(s string) bool {
	r := regexp.MustCompile(`^[[:space:]]*$`)
	return len(s) == 0 || r.MatchString(s)
}
