// Clock stub file

// To use the right term, this is the package *clause*.
// You can document general stuff about the package here if you like.
package clock

import "fmt"

// The value of testVersion here must match `targetTestVersion` in the file
// clock_test.go.
const testVersion = 4

// Clock API as stub definitions.  No, it doesn't compile yet.
// More details and hints are in clock_test.go.

type Clock struct {
  hour   int
  minute int
} // Complete the type definition.  Pick a suitable data type.

func New(hour, minute int) Clock {
  for minute < 0 {
    minute = minute + 60
    hour = hour - 1
  }
  if minute > 59 {
    hour = hour + minute/60
    minute = minute % 60
  }
  for hour < 0 {
    hour = hour + 24
  }
  if hour > 23 {
    hour = hour % 24
  }
  clock := Clock{hour: hour, minute: minute}
  return clock
}

func (c Clock) String() string {
  return fmt.Sprintf("%02d:%02d", c.hour, c.minute)
}

func (original_clock Clock) Add(minutes int) Clock {
  new_clock := New(original_clock.hour, original_clock.minute+minutes)
  return new_clock
}

// Remember to delete all of the stub comments.
// They are just noise, and reviewers will complain.
