// This is a "stub" file.  It's a little start on your solution.
// It's not a complete solution though; you have to write some code.

// Package twofer should have a package comment that summarizes what it's about.
// https://golang.org/doc/effective_go.html#commentary
package twofer

import "fmt"

// ShareWith should have a comment documenting it.
func ShareWith(who string) string {
	if who == "" {
		who = "you"
	}
	return fmt.Sprintf("One for %s, one for me.", who)
}
