library(tidyverse)

statefiles <- list.files("data/source/namesbystate", full.names=T)

statesdf <- map_df(statefiles, read_csv, col_names=F)

names(statesdf) <- c("state", "sex", "year", "name", "babies")

natfilepaths <- list.files("data/source/names", full.names=T)

nationaldf <- map_df(natfilepaths,
                     function(x) {
                       read_csv(x, col_names = c("name", "sex", "babies")) %>%
                         mutate(year = as.numeric(str_sub(x, nchar(x[1])-7, nchar(x[1])-4)))
})




