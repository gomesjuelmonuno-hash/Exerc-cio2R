##########################################
# Lista de exercícios 2
# Autor: Juelmo Gomes
# Data: 06/04/2026
##########################################

# Removendo os objetos ativos
rm(list = ls())

##########################################
# Leitura dos dados
##########################################
urlfile="https://raw.githubusercontent.com/edsonzmartinez/cursoR/main/Dados_jogadores.csv"
jog <- read.csv2(urlfile)

##########################################
# --- Exercício 1 ---
##########################################
# (a) Estatísticas descritivas da idade

# média
mean(jog$idade)

# desvio padrão
sd(jog$idade)
# mediana
median(jog$idade)

# amplitude
range(jog$idade)
diff(range(jog$idade))

# intervalo interquartil
IQR(jog$idade)
# (b) Média e desvio padrão da altura dos atletas com mais de 25 anos

mean(jog$altura[jog$idade > 25])
sd(jog$altura[jog$idade > 25])
# (c) Estatísticas descritivas da altura por posição

# média por posição
tapply(jog$altura, jog$posicao, mean)

# desvio padrão por posição
tapply(jog$altura, jog$posicao, sd)
# mediana por posição
tapply(jog$altura, jog$posicao, median)


# (d) Correlação de Pearson entre idade e altura com IC 95%

cor.test(jog$idade, jog$altura, method = "pearson")


# (e) Frequências absolutas e relativas por posição
# frequência absoluta
table(jog$posicao)

# frequência relativa
prop.table(table(jog$posicao))
# (f) Frequência por intervalos de idade

intervalos <- cut(jog$idade,
                  breaks = c(22,24,26,28,30,32,34),
                  right = TRUE)

table(intervalos)

##########################################
# --- Exercício 2 ---
##########################################
# (a) 40 36 32 28 24 20
seq(40, 20, by = -4)

# (b) 9 5 2 9 5 2 9 5 2
rep(c(9,5,2), times = 3)

# (c) 0.0 0.2 0.4 0.6 0.8 1.0
seq(0, 1, by = 0.2)

# (d) 9 9 9 7 7 7
rep(c(9,7), each = 3)

