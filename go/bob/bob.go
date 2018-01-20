/*
Bob is a lackadaisical teenager. In conversation, his responses are very limited.

Bob answers 'Sure.' if you ask him a question.

He answers 'Whoa, chill out!' if you yell at him.

He answers 'Calm down, I know what I'm doing!' if you yell a question at him.

He says 'Fine. Be that way!' if you address him without actually saying
anything.

He answers 'Whatever.' to anything else.
*/
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

// Bob's respond method
func Hey(remark string) string {
	remark = strings.TrimSpace(remark)
	if IsSilent(remark) {
		return fine
	}
	if IsAQuestion(remark) {
		if IsShouting(remark) && HasLetters(remark) {
			return calm
		} else {
			return sure
		}
	}
	if IsShouting(remark) && HasLetters(remark) {
		return chill
	}
	return whatever
}

func IsShouting(s string) bool {
	return strings.ToUpper(s) == s
}

func IsAQuestion(s string) bool {
	return s[len(s)-1:] == "?"
}

func HasLetters(s string) bool {
	r := regexp.MustCompile(`[[:alpha:]]`)
	return r.MatchString(s)
}

func IsSilent(s string) bool {
	r := regexp.MustCompile(`^[[:space:]]*$`)
	return len(s) == 0 || r.MatchString(s)
}
