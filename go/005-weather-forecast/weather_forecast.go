// Package weather provides function to render forecast.
package weather

// CurrentCondition represents current weather condition.
var CurrentCondition string
// CurrentLocation represents location of forecast.
var CurrentLocation string

// Forecast returns current weather conditions in some location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
