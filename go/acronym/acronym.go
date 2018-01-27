// Package acronym makes acronyms out of strings
package acronym

import (
	"regexp"
	"strings"
)

// Abbreviate takes a string and turn it into an acronym.
func Abbreviate(s string) string {
	words := regexp.MustCompile("[ -]").Split(s, -1)
	initials := make([]string, len(words))
	for i, word := range words {
		initials[i] = strings.ToUpper(word[0:1])
	}
	return strings.Join(initials, "")
}
