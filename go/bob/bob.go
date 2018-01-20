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
