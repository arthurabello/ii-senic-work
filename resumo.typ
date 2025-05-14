#show link: underline

#align(left, text(12pt)[
  #text(weight: "bold")[II SENIC - Semana Nacional de Iniciação Científica da SBM\
  UFPA - Universidade Federal do Pará\
  Belém-PA, 18 a 22 de agosto de 2025]
])

#align(center, text(18pt)[
  Mínimos Quadrados e o Encapsulamento de Imagens via SVD
])

#align(center, text(13pt)[
  Arthur Rabello Oliveira
  #footnote[#link("https://emap.fgv.br/")[Escola de Matemática Aplicada, Fundação Getúlio Vargas (FGV/EMAp)], email: #link("mailto:arthur.oliveira.1@fgv.edu.br")]
])

Deduzimos o número de condicionamento nos problemas de regressão linear e polinomial, investigando o comportamento das matrizes associadas e suas implicações na estabilidade algorítmica. Concluimos que, enquanto a regressão linear possui condicionamento convergente (para pontos igualmente espaçados na reta $(t_i,b_i) = (i/m, b_i)$, onde $m$ e $b_i$ são arbitrários), a regressão polinomial é extremamente sensível à perturbações à medida que o grau $n$ aumenta. Documentamos casos em que o número de condicionamento ultrapassa $10^16$ para $n >= 8$, evidenciando severa instabilidade. Como aplicação interessante, usamos a decomposição SVD para compressão de imagens digitais, demonstrando uma abordagem de redução de custo que preserva características visuais importantes. Neste processo, cada imagem é representada como uma matriz de pixels que pode ser decomposta via SVD na forma $A = U Sigma V^T$, onde os valores singulares em $Sigma$ são ordenados de forma decrescente por importância. Aplicando técnicas de regressão linear para determinar o número ótimo de valores singulares a reter, estabelecemos uma relação entre taxa de compressão e qualidade da imagem reconstruída. Para quantificar a eficiência da compressão, implementamos métricas de erro como MSE (Mean Squared Error) e PSNR (Peak Signal-to-Noise Ratio) e analisamos o comportamento dessas métricas em função do número de componentes principais utilizados. Nossa análise mostra que as primeiras componentes principais capturam a maior parte da informação relevante da imagem, permitindo reconstruções satisfatórias com menos de $20percent$ dos valores singulares originais. Além da redução significativa no armazenamento, demonstramos que o bom condicionamento da regressão linear permite predizer com confiabilidade o limiar ótimo de compressão para diferentes classes de imagens, combinando efetivamente as duas partes do trabalho. Os resultados reforçam a importância do estudo do condicionamento numérico tanto para fins teóricos quanto para aplicações práticas em processamento de dados e imagens.


