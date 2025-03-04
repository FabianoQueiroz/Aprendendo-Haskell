# Haskell Básico

## Introdução

 - Funcional
 - Pura
 - Lazy

### 01. Funcional
 - Funções são primeira classe, ou seja, podem ser usada da mesma forma que outras variáveis
 - Os programas em Haskell são mais focados em calcular expressões do que executar instruções (descritiva vs. imperativa)

### 02. Pura
 - Seus valores não são mutáveis
 - Suas expressões não possuem *side effects*, ou seja, somente realizam a operação `input -> expression -> output` (Não printam na tela, nem alteram variáveis globais, por exemplo)
 - Uma função/expressão com os mesmos `input` geram os mesmos `output`, ou seja, são **determinísticos**.

### 03. *Lazy*
 - Apenas calcula expressões uma vez que elas são necessárias, por ex., se definimos uma lista infinita, não calculamos infinitos valores e armazenamos em memória (o que seria impossível), mas apenas calculamos determinandos valores dessa lista uma vez outra expressão "chama" eles.

 ```{haskell}
> let list = [1...10¹²]
> take 5 list
[1, 2, 3, 4, 5]
```

## Funções & Variáveis

 - O tipo de uma função com mais de um parâmetro é definido como `Tipo Parm.1 -> Tipo Parm. 2 -> ... -> Tipo Result`
 - Operações binárias (+, -, &, ^, ...) podem ser declaradas de duas formas `(oper) arg_1 arg_2` ou `arg_1 oper arg_2`
 - Funções são mais fortes que operações, ou seja, vão ser avaliadas antes do que as operações, logo, `func arg_1 oper arg_2 <=> (func arg_1) oper arg_2`
 - Para declarar valores negativos, colocamos entre parenteses para o compilador não interpretar como o operador `-`
 - Qualquer função pode ser colocada entre \` para se comportar como um operador, ou seja, pode ser declarada como:
> arg_1 \`func\` arg_2


### 01. Tipos Numéricos
 - **Int:** Inteiros que cabem em um registro da arquitetura do processador (para 64bits, 2⁶³ negativos ou positivos)
 - **Integer:** Inteiros limitados pela memória do seu computador
 - **Float:** Reais de precisão simples
 - **Double:** Reais de precisão dupla

 - Uma variável de tipo `Num` pode ser de qualquer tipo numérico
 - `/` somente funciona para Double, para divisao de inteiros, usamos `div`
 - Não podemos realizar operações entre duas variáveis de tipos diferentes
 - `round, floor, celling` convertem reais para inteiros
 - `fromInteger` converte inteiros para outros numéricos

### 02. Recursividade


 