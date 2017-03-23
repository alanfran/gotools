# https://blog.golang.org/cover
#
# Create a coverage report for your project.
# Launches in a browser.
#
# Note: Your code must be in $GOPATH or $GOROOT for this to work.

go test -coverprofile=coverage.out && go tool cover -html=coverage.out
