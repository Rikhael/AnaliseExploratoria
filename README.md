# Analise Exploratoria 
 Encontramos nenhum dado faltante.\
\
 O gráfico da idade se mostra bem distribuído, com menos entradas nas idades mais
avançadas, o que é esperado.\
\
 Na variável tempo_preso, vemos que a maioria se encontra entre 50 e 70 meses, com outlier em 90 meses.\
\
Comparando o score de periculosidade por escolaridade, vemos uma sutil queda no score para as pessoas com ensino superior. Comparando quem tem ensino fundamental completo com ensino médio, uma distribuição muito parecida com uma queda ainda mais sutil para quem tem ensino médio completo.
\
Em seguida, vemos que a maior parte das pessoas nessa base não apresentam reincidente.
\

**Média** - a soma de todas as observações dividida pelo número de observações
$$
\bar{x} = \frac{1}{n} \sum_{i=1}^{n} x_i
$$

**Coeficiente de correlação** - mede a força e a direção da relação linear entre duas variáveis
$$
r = \frac{\sum_{i=1}^{n} (x_i - \bar{x})(y_i - \bar{y})}
{\sqrt{\sum_{i=1}^{n} (x_i - \bar{x})^2 \sum_{i=1}^{n} (y_i - \bar{y})^2}}
$$

**Mediana** - o valor central do conjunto de dados ordenados
$$
\text{Mediana} =
\begin{cases}
x_{\left(\frac{n+1}{2}\right)}, & \text{se } n \text{ é ímpar} \\
\\
\frac{x_{\left(\frac{n}{2}\right)} + x_{\left(\frac{n}{2}+1\right)}}{2}, & \text{se } n \text{ é par}
\end{cases}
$$
**Variância** - mede o quanto os valores de um conjunto de dados se afastam da média\
populacional:\
$$
\sigma^2 = \frac{1}{n} \sum_{i=1}^{n} (x_i - \mu)^2
$$
\
amostral:\
$$
s^2 = \frac{1}{n - 1} \sum_{i=1}^{n} (x_i - \bar{x})^2
$$
**Desvio Padrão** - o grau médio de dispersão em torno dos valores da média\
populacional:\
$$
\sigma = \sqrt{\frac{1}{n} \sum_{i=1}^{n} (x_i - \mu)^2}
$$
\
amostral:\
$$
s = \sqrt{\frac{1}{n - 1} \sum_{i=1}^{n} (x_i - \bar{x})^2}
$$
**Amplitude** - a diferença entre o maior e o menor valor de um conjunto de dados\
$$
A = x_{\max} - x_{\min}
$$
