# Estatística Básica

# Exercícios

# Carregando o dataset
notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")

# Exercício 1: Resumoo de tipos de dados e estatísticas do dataset
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# Exercício 2: Média de cada turma
mean(notas$TurmaA)
mean(notas$TurmaB)
## Em média, as notas da turma A estão 14 pontos acima ou abaixo da média,
##apresentando maior variabilidade

# Exercício 3: Qual apresentou maior variabilidade
sd(notas$TurmaA)
sd(notas$TurmaB)

# Exercício 4: Coeficiente de variação
media_ta <- mean(notas$TurmaA)
media_tb <- mean(notas$TurmaB)

sd_ta <- sd(notas$TurmaA)
Sd_tb <- sd(notas$TurmaB)

cvA <- sd_ta / media_ta * 100
cvB <- Sd_tb / media_tb * 100

cvA
cvB

#Exercício 5: Nota que apareceu mais vezes em cada turma
calculomoda <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

calculomoda(notas$TurmaA)
calculomoda(notas$TurmaB)