#﻿Descrição do Dataset
Este dataset contém informações detalhadas sobre o consumo de energia e o desempenho de benchmarks, coletadas utilizando a ferramenta Jouleit/PowerAPI. Os dados foram gerados a partir da execução repetida de benchmarks da suíte Polybench/ACC em um sistema específico, com o objetivo de analisar como diferentes níveis de complexidade de entrada afetam o consumo de energia e o desempenho.

#Estrutura do Dataset
* Número de variáveis: 8
* Número de casos/linhas: 401

#Lista de Variáveis
1. CORE:
   * Descrição: Consumo de energia do núcleo do sistema.
   * Unidade: Microjoules (μJ).
2. CPU:
   * Descrição: Consumo de energia da CPU.
   * Unidade: Microjoules (μJ).
3. DRAM:
   * Descrição: Consumo de energia da memória DRAM.
   * Unidade: Microjoules (μJ).
4. DURATION:
   * Descrição: Duração do evento ou medição.
   * Unidade: Microssegundos (μs).
5. PSYS:
   * Descrição: Consumo de energia do sistema.
   * Unidade: Microjoules (μJ).
6. UNCORE:
   * Descrição: Consumo de energia de componentes fora do núcleo da CPU.
   * Unidade: Microjoules (μJ).
7. EXIT_CODE:
   * Descrição: Código de saída do processo ou evento monitorado. Um código de 0 geralmente indica sucesso.
   * Unidade: Valores Inteiros.
8. INPUT:
   * Descrição: Entrada associada ao evento ou medição, representando a quantidade de valores de entrada.
   * Unidade: Valores Inteiros.

#Metodologia de Coleta de Dados
Os dados foram coletados utilizando um script em Bash que automatizou a execução dos benchmarks. O benchmark foi executado 401 vezes, com valores de entrada variando de 800 a 4000, em incrementos de 8. Esta abordagem garante uma repetibilidade dos testes e permitiu uma análise de diferentes tamanhos de problemas.
Durante a execução, a ferramenta Jouleit monitorou e registrou o consumo energético dos componentes de hardware específicos, como CPU, DRAM e componentes fora do núcleo da CPU (UNCORE), além de registrar a duração das execuções.

#Ferramentas Utilizadas
* Hardware:
   * Processador: Intel Core i5-7200U (2 núcleos físicos, 4 núcleos lógicos, frequência base de 2.50 GHz até 3.10 GHz em modo turbo).
   * Memória Cache: 128 KB de cache L1, 512 KB de cache L2, 3 MB de cache L3.
   * Memória do Sistema: 12 GB de memória DDR4 a 2133 MHz.
   * Gráficos Integrados: Intel HD Graphics 620.
* Software:
   * Sistema Operacional: Linux Ubuntu 22.04.
   * Compilador: GCC 11.4.0.
   * Ferramenta de Monitoramento: Jouleit (parte da PowerAPI).

#Padrões de Medição
* Consumo de Energia: Medido em microjoules (μJ).
* Duração das Execuções: Medida em microssegundos (μs).

#Procedimentos de Garantia de Qualidade
Os dados foram gerados e coletados automaticamente pela ferramenta Jouleit, que inclui mecanismos internos para garantir a precisão e a consistência das medições. Cada benchmark foi executado 401 vezes para garantir uma amostra representativa e passível de analise de como diferentes níveis de interação afetam o desempenho e o consumo energético.
Este dataset oferece uma base precisa para analisar o impacto das variáveis de entrada no desempenho e no consumo energético das aplicações de benchmark.
