---

# Quântica Aplicada 
#### Prof. Luciano T. Costa
#### e-mail: ltcosta@id.uff.br

### Repositório de Química Quântica Aplicada para Graduação em Química

Este repositório contém o material prático e os roteiros de aula para a disciplina de **Quântica Aplicada** da Universidade Federal Fluminense (UFF). O curso visa transitar dos fundamentos teóricos da Mecânica Quântica para as aplicações práticas em Química Computacional.

## 📚 Introdução

A disciplina explora a resolução da Equação de Schrödinger para sistemas atômicos e moleculares, utilizando aproximações fundamentais para viabilizar cálculos em sistemas multieletrônicos. O material de apoio (anexo) cobre desde os postulados da mecânica quântica e métodos como Hartree-Fock (HF), Teoria do Funcional da Densidade, métodos semiempíricos como GFN2-xTB e póś-Hartree-Fock, com amplo uso de conjuntos de funções base (*basis sets*).

---

## 📂 Estrutura das Aulas Práticas (`Hands-On`)

As práticas são realizadas utilizando pacotes de química computacional (como Gaussian e Avogadro) para correlacionar problemas reais com os fundamentos estudados.

### [aula1/](https://www.google.com/search?q=aula1/) - O Átomo de Hidrogênio e Limite da Função Base

*  **Teoria:** Revisão da Equação de Schrödinger independente do tempo e solução para sistemas monoeletrônicos. Variação da função base
  e práticas com a molécula de hidrogênio e o íon molecular de hidrogênio. 

*  **Prática:** Introdução sobre o preparo de inputs para o ORCA, formatos de arquivos, função base, interpretação do arquivos de output e função de onda ($\Psi$).

*  **Conceitos Chave:** função de onda e energia, função base e método variacional.


### [aula2/](https://www.google.com/search?q=aula2/) - Métodos Variacionais, Hartree-Fock e Limite da Função Base (HF)

* **Teoria:** Aplicação do Princípio Variacional para otimização de coeficientes e o método de campo autoconsistente (SCF), orbitais.

* **Prática:** Execução de cálculos SCF para moléculas simples e análise da convergência de energia.

* **Conceitos Chave:** Determinante de Slater, antisimetria e o Princípio de Exclusão de Pauli, modelo orbital.


### [aula3/](https://www.google.com/search?q=aula3/) - Conjuntos de Funções Base (*Basis Sets*), Teoria do Funcional da Densidade

* **Teoria:** Expansão de orbitais moleculares como Combinação Linear de Orbitais Atômicos (LCAO) usando Gaussianas Primitivas e Contraídas, introdução à
  Teoria do Funcional da Densidade


* **Prática:** 


* **Conceitos Chave:** 

### [aula4/](https://www.google.com/search?q=aula4/) - Espectroscopia Vibracional e Cálculos de Frequência

* **Teoria:** 


* **Prática:** 


* **Conceitos Chave:** 

---

## 🛠️ Requisitos e Ferramentas

* **Avogadro:** Para construção e visualização molecular.
 Estou deixando aqui um tutorial breve da versão antiga do Avogadro, porém um usuário interessado pode explorar um tutorial no website do [Avogadro](https://avogadro.cc/docs/tutorials/index.html). Um excelente tutorial do ORCA com Avogadro que recomendo é o da IaNiusha, em [Playlist ORCA](https://www.youtube.com/watch?v=q20J0iIuyEQ&list=PLxm4o04Xz3Bb7q5EKZNHnA8peEuJQYk0L). 

  
* **ORCA:** Para cálculos de estrutura eletrônica.

 Para as aulas ministradas no LACAP, usaremos uma versão antiga do ORCA, porém estável e que ocupa um espaço menor comparado com as versões mais recentes.
  O tutorial de instalação e uso do ORCA está baseado na versão 4.2.1, porém se o usuário possui espaço em disco pode baixar a versão mais recente em
  [ORCA forum](https://orcaforum.kofo.mpg.de/app.php/portal). O usuário deve fazer o registro e depois em Downloads baixar a versão de sua escolha.
  Tutoriais e documentação podem ser acessados em [FACCTS ORCA](https://www.faccts.de/docs#orca). O download do manual está neste [link](https://www.faccts.de/docs/orca/6.1/manual/). 
  
* **Notepad++** Para edição dos arquivos texto no terminal, notepad++ é uma ótima solução para usuários Windows que não possuem familiarização com [VIM](https://www.vim.org/) e [emacs](https://www.gnu.org/software/emacs/). Pode baixar em [notepad++](https://notepad-plus-plus.org/downloads/).
  
* **MobaXterm** Para execução dos cálculos no Windows. Usuários com Linux ou Mac não precisam. A partir desta janela de console, você poderá executar os comandos Unix necessários: ls, cd, grep, awk, tail, cut, sed, wget, rsync, telnet, ssh, rlogin, rsh... Todas as ferramentas essenciais do Unix estão presentes. Caso precise de algum programa que não esteja disponível no arquivo MobaXterm básico, você pode baixar os plugins gratuitos. Para baixar veja o [link](https://mobaxterm.mobatek.net/download.html).
  
*  **Jupyter-Notebook** Para demonstração de aulas e gráficos. Para facilitar para os estudantes, usaremos os códigos em Python no [Google COLAB](https://colab.research.google.com/).

**Conhecimentos Prévios:** Introdução à Química Quântica, Álgebra Linear (notação de Dirac) e Cálculo Diferencial.



## 📖 Referência Principal

* COSTA, Luciano T. **Apostila Quântica Aplicada**. Atualizada em Jul/2025.



---

*Este material foi desenvolvido para suporte acadêmico aos alunos da UFF.*
