
options("encoding" = "UTF-8")
time_txt <- paste0("헬로월드 현재시각: ", Sys.time(), "\n")
cat(time_txt, file="helloworld_time.txt", append = TRUE)

