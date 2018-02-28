
# Reading data

?read.table
?read.csv


mydata <- read.csv('evals.csv')


# Summaries

head(mydata, 3)
tail(mydata)

View(mydata)

str(mydata)

a <- names(mydata)

summary(mydata)




# Variables

b <- mydata$score

mean(mydata$score)

summary(mydata$score)

mydata$score * 2

mydata$ten_point_scale <- mydata$score * 2



summary(mydata$ten_point_scale)

mydata$new_varible <- 0
mydata$number <- 1:nrow(mydata)
summary(mydata$number)

nrow(mydata)
ncol(mydata)





# Subsetting

mydata$score[1:10]

mydata[1,1]
mydata[c(2,193,225),1]
mydata[101:200,1]

mydata[5,]
mydata[,1] == mydata$score

mydata[,2:5]
head(mydata[,2:5])

##


# Subsetting with condition

mydata$gender
mydata$gender == 'female'
head(mydata[mydata$gender == 'female',1:3])

head(subset(mydata, gender == 'female'))
head(subset(mydata, score > 3.5))



# rbind, cbind

mydata2 <- subset(mydata, gender == 'female')
mydata3 <- subset(mydata, gender == 'male')
mydata4 <- rbind(mydata2, mydata3)

mydata5 <- mydata[,1:10]
mydata6 <- mydata[,11:24]
mydata7 <- cbind(mydata6, mydata5)

В курсе мы часто будем использовать следующие арифметические и логические операции:

Арифметические операции


+         сложение
-         вычитание
*         умножение
/         деление  (5 / 2 = 2.5)
^ или **  возведение в степень (5^2 = 25 или 5**2 = 25)
x %% y    остаток от деления  (5 %% 2 = 1)
x %/% y   целая часть от деления (5 %/% 2 = 2)

Логические операции

<       меньше 
<=      меньше или равно
>       больше
>=      больше или равно
==      проверка на равенство
!=      не равно
!x      не x
x | y   x или y
x & y   x и y

TRUE  можно сокращенно обозначать T
FALSE можно сокращенно обозначать F


1. Чтобы изучить структуру данных воспользуйтесь командой str()

str(mtcars)
2. Чтобы отобрать нужные колонки (переменные) в данных вы можете:

 - использовать номера колонок (не забудьте обернуть индексы в вектор):
mtcars[, c(1, 3, 4)] 

- использовать имена колонок:
mtcars[, c("mpg", "hp")]

3. Чтобы отобрать нужные строки в данных:
mtcars[c(1, 5, 7), ]

Эти приемы можно комбинировать:
mtcars[c(1, 4, 5), c(1, 4)] 

Запомните, сначала идут индексы строк, потом индексы колонок! Также обратите внимание, что мы можем использовать отрицательную индексацию, чтобы отобрать все колонки/строки кроме указанных:
mtcars[, -c(3, 4)] # отберем все строчки и все колонки кроме 3 и 4. 

4. Для более сложных запросов используйте функцию subset():
subset(mtcars, hp > 100 & am == 1)

5. Добавить новую переменную можно при помощи оператора $
mtcars$new_var <- 1:32

6. Чтобы удалить переменную из данных, используйте такую конструкцию:
mtcars$new_var <- NULL