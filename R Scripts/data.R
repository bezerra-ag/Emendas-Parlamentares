#Working directory
setwd("../CSV Data/")

#Data extraction
d <- read.csv("Emendas.csv", fileEncoding = "latin1", sep = ";")

#New column names
colnames(d) <- c("Code",
                 "Year",
                 "Type",
                 "Author.Code",
                 "Author",
                 "Number",
                 "Place",
                 "Function.Code",
                 "Function",
                 "Subfunction.Code",
                 "Subfunction",
                 "Value.Planned",
                 "Value.Liquidated",
                 "Value.Paid",
                 "Residue.Planned",
                 "Residue.Cancelled",
                 "Residue.Paid")

#Factoring
l <- c("Year",
       "Type",
       "Author.Code",
       "Author",
       "Number",
       "Place",
       "Function.Code",
       "Function",
       "Subfunction.Code",
       "Subfunction")
for (i in l) {
  d[,i] <- factor(d[,i])
}
#Data formatting
l <- c("Value.Planned",
       "Value.Liquidated",
       "Value.Paid",
       "Residue.Planned",
       "Residue.Cancelled",
       "Residue.Paid")
for (i in l) {
  d[,i] <- as.numeric(gsub(",", ".", d[,i]))
}
rm(l,i)
