package clock

import "fmt"

const testVersion = 4

type Clock struct {
	hour   int
	minute int
}

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
