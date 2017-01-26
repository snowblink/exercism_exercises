package gigasecond

import (
	"math"
	"time"
)

const testVersion = 4

func Gigasecond() time.Duration {
	return time.Duration(1*math.Pow(10, 9)) * time.Second
}

func AddGigasecond(t time.Time) time.Time {
	return t.Add(Gigasecond())
}
