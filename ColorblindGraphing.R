setwd("/Users/josh/senofjohan/r/dual-purpose-graphing")

# Load libraries
library(ggplot2)

# Toggling between TRUE and FALSE will display different graph
is.research.paper=TRUE

# Sample data
data=data.frame(value=rnorm(10000))

if (is.research.paper) { # plot data in black and white
  histogram = ggplot(data, aes(x=value)) + geom_histogram(binwidth = 0.2)
  print(histogram)
} else if (!is.research.paper) { # plot data in turquoise inspired by 'theoceancleanup.com/'
  histogram = ggplot(data, aes(x=value)) + geom_histogram(
    binwidth = 0.2, 
    color="black", 
    fill="turquoise" 
  ) 
  print(histogram)
}