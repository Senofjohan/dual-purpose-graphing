setwd("/Users/josh/senofjohan/r/dual-purpose-graphing")

# Load libraries
library(ggplot2)

# Toggling between TRUE and FALSE will display different graph
is.research.paper=TRUE

# Sample data
data=data.frame(value=rnorm(10000))

if (is.research.paper) { # set black and white
  ggplot(data, aes(x=value)) + geom_histogram(binwidth = 0.2)
} else if (!is.research.paper) { # display color
  ggplot(data, aes(x=value)) + geom_histogram(
    binwidth = 0.2, 
    color="black", 
    fill="turquoise" 
  ) 
}