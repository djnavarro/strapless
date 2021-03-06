# requires an installation of sass

build_strapless <- function() {

  wd <- setwd(here::here("strapless","scss"))
  on.exit(setwd(wd))

  source <- here::here("strapless", "scss", "strapless.scss")
  output <- here::here("strapless", "css", "strapless.css")

  system(paste("sass", source, output))
  file.copy(output, here::here("examples", "distill", "strapless.css"))
}

build_strapless()
