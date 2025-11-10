
setwd('C:\\Users\\ssser\\Downloads')

library(readxl)
dados <- read_excel("Base_trabalho.xlsx")


str(dados) #Verificando estrutura da base e quais variáveis serão transformadas em
           #fator.
dados <- dados |>
  mutate(across(c(sexo, filhos, escolaridade, casado), as.factor))

sum(is.na(dados)) 

library(naniar)
miss_var_summary(dados) #Aparentemente nenhum dado faltante

library(ggplot2)#Pacote para construção dos gráficos
#Histograma da variável Idade.
g1 <- ggplot(dados, aes(x = idade)) +
  geom_histogram(color = "black", fill = "lightblue", bins = 20) +
  labs(
    title = "Histograma da variável Idade",
    x = "Idade",
    y = "Frequência"
  ) +
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5)
  )

#Boxplot da variável tempo_preso
g2 <-ggplot(dados, aes(x = "", y = tempo_preso)) +
  geom_boxplot(fill = "lightblue", color = "black") +
  labs(
    title = "Boxplot da variável Tempo Preso",
    x = "",
    y = "Tempo Preso"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )


#Agora o boxplot da variável score_periculosidade por escolaridade
g3 <- ggplot(dados, aes(x = escolaridade, y = score_periculosidade)) +
  geom_boxplot(fill = "lightblue") +
  scale_x_discrete(
    labels = c("1" = "Fundamental", 
               "2" = "Médio", 
               "3" = "Superior")
  ) +
  labs(
    title = "Score de Periculosidade por Escolaridade",
    x = "Escolaridade",
    y = "Score de Periculosidade"
  ) +
  theme_minimal()+
  theme(
    plot.title = element_text(hjust = 0.5)
  )

#Gráfico de barras para a variável reincidente
g4 <- ggplot(dados, aes(x = reincidente)) +
  geom_bar(fill = "lightblue", color = "black") +
  labs(
    title = "Frequência de Reincidência",
    x = "Reincidente",
    y = "Contagem"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5)
  )

#Salvando os gráficos em png
dir.create("Gráficos") #Cria pasta onde estarão os png's

ggsave("Gráficos/g1.png", plot = g1, width = 7, height = 5, dpi = 300)
ggsave("Gráficos/g2.png", plot = g2, width = 7, height = 5, dpi = 300)
ggsave("Gráficos/g3.png", plot = g3, width = 7, height = 5, dpi = 300)
ggsave("Gráficos/g4.png", plot = g4, width = 7, height = 5, dpi = 300)



