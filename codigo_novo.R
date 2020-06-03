#Carregando base no programa
load("base_dados.RData")

#Quais as variáveis de estudo?

colnames(base_dados)

#Como descrever estatisticamente
#a variável de salário?

min(base_dados$Salário)

max(base_dados$Salário)

mean(base_dados$Salário)

median(base_dados$Salário)

summary(base_dados$Salário)

#Para os participantes do programa, o salário
#aumentou?

base_dados_sem_programa <- base_dados %>%
  filter(Tratamento==0)

base_dados_com_programa <- base_dados %>%
  filter(Tratamento==1)

ggplot(base_dados,aes(x = Tratamento, y=Salário)) +
  geom_boxplot(aes(fill = factor(Tratamento))) +
  scale_x_continuous(breaks = c(0,1))

ggplot(base_dados,aes(x = Nivel, y=Salário)) +
  geom_boxplot(aes(fill = factor(Tratamento)))

summary(base_dados_sem_programa$Salário)

summary(base_dados_com_programa$Salário)


