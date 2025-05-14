#show link: underline
#set par(first-line-indent: 1.5em,justify: true)

#align(left, text(12pt)[
  #text(weight: "bold")[II SENIC - Semana Nacional de Iniciação Científica da SBM\
  UFPA - Universidade Federal do Pará\
  Belém-PA, 18 a 22 de agosto de 2025]
])

#align(center, text(18pt)[
  Mínimos Quadrados e Compressão de Imagens via SVD
])

#align(center, text(13pt)[
  Arthur Rabello Oliveira
  #footnote[#link("https://emap.fgv.br/")[Escola de Matemática Aplicada, Fundação Getúlio Vargas (FGV/EMAp)], email: #link("mailto:arthur.oliveira.1@fgv.edu.br")]
])

Em Análise Numérica, uma boa forma de medir o quão sensível um problema é a parturbações, definimos o número de condicionamento absoluto #footnote[#link("https://www.stat.uchicago.edu/~lekheng/courses/309/books/Trefethen-Bau.pdf")[Veja mais em Trefethen & Bau: Numerical Linear Algebra]] (e posteriormente o relativo) $hat(k)$ de um problema $f:X -> Y$ de um espaço vetorial _normado_ $X$ de dados noutro $Y$ de soluções como:

$
  hat(kappa) = lim_(delta -> 0) sup_(norm(delta x) <= delta) norm(f(x + delta x) - f(x)) / norm(delta x)
$
 
Nos problemas de regressão linear e polinomial, investigamos o comportamento das matrizes associadas. Concluimos que, enquanto a regressão linear em geral possui condicionamento convergente, a regressão polinomial é extremamente sensível à perturbações à medida que o grau $n$ aumenta.

Documentamos casos em que o número de condicionamento ultrapassa $10^16$ para $n >= 8$, evidenciando severa instabilidade. Como aplicação interessante, usamos a decomposição SVD para compressão de imagens digitais, demonstrando uma abordagem de redução de custo que preserva características visuais importantes.

Neste processo, cada imagem é representada como uma matriz de pixels que pode ser decomposta via SVD na forma $A = U Sigma V^T$, onde os valores singulares (v.s) em $Sigma$ são ordenados de forma decrescente por relevância. Usamos regressão linear para encontrar uma quantidade ótima de valores singulares a reter.

Para quantificar a eficiência da compressão, implementamos métricas de erro como MSE (Mean Squared Error) e PSNR (Peak Signal-to-Noise Ratio) e analisamos o comportamento dessas métricas em função do número de v.s utilizados. Concluimos que os primeiros v.s retêm a maior parte da qualidade de imagem, permitindo reconstruções satisfatórias com menos de $20percent$ dos v.s originais.

#figure(
  image("progression_images.png", width: 36%),
  caption: [
    Um exemplo, com $k = $ quantidade de v.s utilizados
  ]
)

Além da redução significativa no armazenamento, demonstramos que o bom condicionamento da regressão linear permite predizer com confiabilidade o limiar ótimo de compressão para diferentes classes de imagens. Os resultados reforçam a importância do estudo do condicionamento numérico tanto para fins teóricos quanto para aplicações práticas em processamento de dados e imagens.


