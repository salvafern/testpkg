## code to prepare `example_virus` dataset goes here

example_virus <- data.frame(virus_name = c("herpes", "influenza", "covid"))
example_virus <- new_virus_df(example_virus)

usethis::use_data(example_virus, overwrite = TRUE)
