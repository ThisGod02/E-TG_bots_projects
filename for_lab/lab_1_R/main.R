cat("Введите сторону квадрата: ")
a <- as.numeric(readline())

cat("Введите первую сторону прямоугольника: ")
b1 <- as.numeric(readline())

cat("Введите вторую сторону прямоугольника: ")
b2 <- as.numeric(readline())

cat("Введите радиус круга: ")
r <- as.numeric(readline())

sq <- a * a
rect <- b1 * b2
circ <- pi * r^2
total <- sq + rect + circ

# Вывод результатов
cat("Площадь квадрата -", sq, "\n")
cat("Площадь прямоугольника -", rect, "\n")
cat("Площадь круга -", round(circ, 2), "\n")
cat("Общая площадь -", round(total, 2), "\n")