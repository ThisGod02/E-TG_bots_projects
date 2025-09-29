get_negative_values = function(x) {
    result <- list()
    len = length(x[[1]])
    for (i in 1:length(x)){
        if (len == length(x[[i]])){
            res = c()
            for (j in x[[i]]) {
                if(!is.na(j) & j < 0){
                    res = c(res, j)
                }
            }
            if (length(res) != 0){
                result <- append(result, list(res))
            }
        } else{
            print(length(i))
            print(len)
            cat("Число элементов в переменных не одинаковое.")
            return(NA)
        }
    }
    return(result)
}

test_data <- as.data.frame(list(V1 = c(NA, -0.5, -0.7, -8), V2 = c(-0.3, NA, -2, -1.2),
V3 = c(1, 2, 3, NA)))
print(get_negative_values(test_data))
test_data <- as.data.frame(list(V1 = c(-9.7, -10, -10.5, -7.8, -8.9), V2 = c(NA, -10.2,
-10.1, -9.3, -12.2), V3 = c(NA, NA, -9.3, -10.9, -9.8)))
print(get_negative_values(test_data))