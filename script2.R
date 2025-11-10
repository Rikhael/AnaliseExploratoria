#Script das análises exploratórias

library(readxl)
dados <- read_excel("Base_trabalho.xlsx") #importando a base
dados <- dados |>
  mutate(across(c(sexo, filhos, escolaridade, casado), as.factor))


#Obtendo média, primeiro quartil, mediana e terceiro quartil das variáveis
#score_periculosidade, idade e tempo_preso
library(dplyr)
dados %>%
  summarise(
    media_score = mean(score_periculosidade, na.rm = TRUE),
    q1_score    = quantile(score_periculosidade, 0.25, na.rm = TRUE),
    med_score   = median(score_periculosidade, na.rm = TRUE),
    q3_score    = quantile(score_periculosidade, 0.75, na.rm = TRUE),
    
    media_idade = mean(idade, na.rm = TRUE),
    q1_idade    = quantile(idade, 0.25, na.rm = TRUE),
    med_idade   = median(idade, na.rm = TRUE),
    q3_idade    = quantile(idade, 0.75, na.rm = TRUE),
    
    media_tempo = mean(tempo_preso, na.rm = TRUE),
    q1_tempo    = quantile(tempo_preso, 0.25, na.rm = TRUE),
    med_tempo   = median(tempo_preso, na.rm = TRUE),
    q3_tempo    = quantile(tempo_preso, 0.75, na.rm = TRUE)
  )

#Gráfico de dispersão entre tempo_preso e score_periculosidade
library(ggplot2) #Pacote para construção dos gráficos
g_disp <- ggplot(dados, aes(x = tempo_preso, y = score_periculosidade)) +
  geom_point(alpha = 0.6) +
  geom_smooth(method = "lm", se = TRUE) +
  labs(
    title = "Dispersão entre Tempo Preso e Score de Periculosidade",
    x = "Tempo Preso",
    y = "Score de Periculosidade"
  ) +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))

g_disp

cor(dados$tempo_preso, dados$score_periculosidade, use = "complete.obs")
#Correlação calculada: 0.8037558


#Obtendo variância, desvio padrão e amplitude das variáveis score_periculosidade,
#idade e tempo_preso
dados %>%
  summarise(
    var_score  = var(score_periculosidade, na.rm = TRUE),
    sd_score   = sd(score_periculosidade, na.rm = TRUE),
    amp_score  = max(score_periculosidade, na.rm = TRUE) - min(score_periculosidade, na.rm = TRUE),
    
    var_idade  = var(idade, na.rm = TRUE),
    sd_idade   = sd(idade, na.rm = TRUE),
    amp_idade  = max(idade, na.rm = TRUE) - min(idade, na.rm = TRUE),
    
    var_tempo  = var(tempo_preso, na.rm = TRUE),
    sd_tempo   = sd(tempo_preso, na.rm = TRUE),
    amp_tempo  = max(tempo_preso, na.rm = TRUE) - min(tempo_preso, na.rm = TRUE)
  )


