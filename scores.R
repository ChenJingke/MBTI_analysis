library(dplyr)
library(readr)
library(ggplot2)
library(knitr)
library(psych)
ed_levels <- c(
  "Bacherlor's degree", 
  "Master's degree", 
  "Doctorate degree")
age_levels <- c(
  "18-24", 
  "25-34", 
  "34-44",
  "45-54",
  "Over 55")
likert_levels <- c("1","2","3","4","5")
read.csv('MBTI data.csv')
d_MBTI <- read_csv('MBTI data.csv',
                   col_types = cols(
                     col_factor(),
                     col_factor(order=TRUE, levels=age_levels),
                     col_factor(order=TRUE, levels=ed_levels),
                     col_factor(),
                     col_factor(),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels),
                     col_factor(order=TRUE, levels=likert_levels)
                     ))
View(d_MBTI)
key_list <- list(
  preference = c('P1','P2','P3'),
  IE = c('E1','E2','E3','E4','E5','E6'),
  SN = c('S1','S2','S3','S4','S5','S6'),
  TF = c('T1','T2','T3','T4','T5','T6')
)                   

MBTI_scores <- scoreItems(
  key = key_list,
  items = d_MBTI,
  totals = FALSE,
  missing = TRUE,
  impute = 'none'
)
)