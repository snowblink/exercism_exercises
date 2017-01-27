package gigasecond

import "time"

const testVersion = 4

func gigasecond() time.Duration {
	return time.Duration(1e9) * time.Second
}

func AddGigasecond(t time.Time) time.Time {
	return t.Add(gigasecond())
}
