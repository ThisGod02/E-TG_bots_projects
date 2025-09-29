# Чтение количества точек
N <- as.integer(readline())

# Чтение координат точек
points <- list()
for (i in 1:N) {
  coords <- strsplit(readline(), " ")[[1]]
  x <- as.numeric(coords[1])
  y <- as.numeric(coords[2])
  points[[i]] <- c(x, y)
}

# Вычисление площади многоугольника по формуле шнурования
area <- 0
for (i in 1:N) {
  x1 <- points[[i]][1]
  y1 <- points[[i]][2]
  
  # Следующая точка (с замыканием на первую)
  next_index <- ifelse(i == N, 1, i + 1)
  x2 <- points[[next_index]][1]
  y2 <- points[[next_index]][2]
  
  area <- area + (x1 * y2 - x2 * y1)
}

area <- abs(area) / 2

cat(area, "\n")