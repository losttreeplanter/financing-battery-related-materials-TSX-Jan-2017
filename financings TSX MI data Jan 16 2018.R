library(ggplot2)
library(readr)
library(dplyr)


library(readr)
tofin <- read_csv("C:/Users/mmccrae/Desktop/Financings TSE CVS Jan 16 2018 - Revised Capital Raisings three.csv")

#str(tofin)
as_tibble(tofin)

#tofintwo <-filter(tofin, TextYear==2018)
 
tofin %>% filter(TextYear==2018) %>% filter(FinalAmountUSD>1000000) %>% filter(MICommodityExposure=="Gold")