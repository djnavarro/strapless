# requires an installation of sass

source <- here::here("strapless", "scss", "strapless.scss")
output <- here::here("strapless", "css", "strapless.css")
system(paste("sass", source, output))
