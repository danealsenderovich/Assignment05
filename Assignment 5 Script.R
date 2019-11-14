if (!require("data.table")) install.packages("data.table")
library("data.table")
header <- read.table("T10Y2Y.csv", header = TRUE,
                     sep=",", nrow = 1)
DF <- fread("T10Y2Y.csv", skip=1, sep=",",
            header=FALSE, data.table=FALSE)
setnames(DF, colnames(header))
rm(header)

