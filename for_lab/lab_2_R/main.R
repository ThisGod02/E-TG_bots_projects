i <- 0
success <- FALSE

while (i < 3 && !success) {
  tryCatch({
    s <- readline("Введите название фигуры: ")
    
    if (tolower(s) == "ромб") {
      n1 <- as.numeric(readline("Введите длину стороны фигуры: "))
      n2 <- as.numeric(readline("Введите высоту фигуры: "))
      result <- n1 * n2
      cat("Площадь фигуры равна (вычисляется по формуле S = a * h):", result, "\n")
      success <- TRUE
      
    } else if (tolower(s) == "трапеция") {
      n1 <- as.numeric(readline("Введите длину верхнего основания фигуры: "))
      n2 <- as.numeric(readline("Введите длину нижнего основания фигуры: "))
      n3 <- as.numeric(readline("Введите высоту фигуры: "))
      result <- (n1 + n2) / 2 * n3
      cat("Площадь фигуры равна (вычисляется по формуле S = (a1 + a2) / 2 * h):", result, "\n")
      success <- TRUE
      
    } else if (tolower(s) == "эллипс") {
      n1 <- as.numeric(readline("Введите длину полуоси по горизонтали фигуры: "))
      n2 <- as.numeric(readline("Введите длину полуоси по вертикали фигуры: "))
      result <- n1 * n2 * pi
      cat("Площадь фигуры равна (вычисляется по формуле S = a * b * pi(3.14)):", result, "\n")
      success <- TRUE
    } else {
        stop("Ошибка ввода данных!")
    }
    
  }, error = function(e) {
    i <<- i + 1
    cat("Произошла ошибка. Попытка", i, "из 3. Введите название фигуры\n")
  })
}

if (i == 3 && !success) {
  cat("Ошибка ввода данных!\n")
} else {
  cat("Спасибо за использование программы!\n")
}