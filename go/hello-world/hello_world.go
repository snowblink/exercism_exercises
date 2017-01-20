package greeting

import "fmt"

const testVersion = 3

func HelloWorld(name string) string {
  if name == "" {
    name = "World"
  }
  return fmt.Sprintf("Hello, %s!", name)
}
