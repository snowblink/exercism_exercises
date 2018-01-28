// Package twofer allows you to share with others
package twofer

import "fmt"

// ShareWith returns a string describing fairly dividing the spoils.
func ShareWith(who string) string {
	if who == "" {
		who = "you"
	}
	return fmt.Sprintf("One for %s, one for me.", who)
}
