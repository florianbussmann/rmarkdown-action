args <- commandArgs(trailingOnly = TRUE)
library(rmarkdown)
if (exists(args[2])) render(args[1], output_format = args[2]) else render(args[1])
