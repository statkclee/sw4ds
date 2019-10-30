# 0. 환경설정 ---------------------------------------
library(tidyverse)

# 1. 보고서 만들기 ---------------------------------------

rmarkdown::render("sw4ds-automation-earthquake-cron-job.Rmd", 
                output_format="html_document",
                params = list(province = province),
output_file = str_c(paste0("earthquake_report_"), Sys.Date(), ".html", sep=""),
encoding = 'UTF-8', 
output_dir = "report")



