print(sw_films[[1]]["title"])
films <- map(sw_films, ~ .x$title)
named_films <- set_names(sw_films, films)
?"purrr-package"