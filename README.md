# Smart Contract ANAC

Este repositório contém um **Smart Contract Solidity** desenvolvido para classificar passageiros de acordo com sua idade, conforme as regras da **ANAC (Agência Nacional de Aviação Civil)** para voos internacionais.

## 1. Objetivo do Smart Contract

O contrato tem como objetivo armazenar e gerenciar a idade de um passageiro e classificá-lo em uma das categorias definidas pela ANAC:

- **Adulto brasileiro**: passageiros com **18 anos ou mais**.
- **Criança ou adolescente brasileiro**: passageiros entre **0 e 17 anos**.

O contrato também inclui um controle para que apenas o **dono do contrato** possa modificar a idade cadastrada.

---

## 2. Estrutura do Código

O contrato foi escrito em **Solidity 0.8.x** e contém as seguintes funcionalidades:

- **Variável de estado**: `idade`, armazenando a idade do passageiro (inicialmente `18`).
- **Controle de permissão**: apenas o **dono do contrato** pode modificar a idade.
- **Função `setIdade(uint256 _idade)`**: permite alterar a idade (somente pelo dono do contrato).
- **Função `getIdade()`**: retorna a idade armazenada.
- **Função `getCategoria()`**: retorna a classificação do passageiro.

O código pode ser encontrado no arquivo [`anac.sol`](anac.sol).

---

## 3. Como Testar no Remix IDE

### **Passo 1: Acessar o Remix IDE**
1. Abrir o site [Remix Ethereum](https://remix.ethereum.org).
2. Criar um novo arquivo chamado **`anac.sol`**.
3. Copiar e colar o código do contrato no arquivo.

### **Passo 2: Compilar o Smart Contract**
1. Na aba **Solidity Compiler**, selecionar a versão **0.8.x**.
2. Clicar em **"Compile anac.sol"**.
3. Se não houver erros, o contrato está pronto para ser implantado.

### **Passo 3: Implantar o Contrato**
1. Ir até a aba **Deploy & Run Transactions**.
2. Selecionar **"Remix VM (London)"** no campo **"Environment"**.
3. Clicar no botão **"Deploy"**.
4. O contrato aparecerá na seção **"Deployed Contracts"**.

### **Passo 4: Testar as Funções**
1. **`getIdade()`** → Deve retornar `18` (valor padrão).
2. **`getCategoria()`** → Deve retornar `"Adulto brasileiro"`.
3. **`setIdade(15)`** → Altera a idade para `15` (somente o dono do contrato pode fazer isso).
4. **`getIdade()`** → Agora deve retornar `15`.
5. **`getCategoria()`** → Agora deve retornar `"Crianca ou adolescente brasileiro"`.

---

## 4. Uso da IA Generativa

Para o desenvolvimento deste contrato, a **IA foi utilizada como auxílio**, e não como única ferramenta de criação. O desenvolvimento envolveu:

### **Etapas do Desenvolvimento**
1. **Pesquisa e estruturação do código**
   - Consulta ao site da ANAC para entender as regras de embarque.
   - Planejamento da estrutura do contrato antes de iniciar a codificação.

2. **Desenvolvimento com suporte da IA**
   - Geração inicial do código base com a função `setIdade` e `getIdade`.
   - Ajustes manuais para restringir `setIdade` ao dono do contrato.
   - Implementação manual da função `getCategoria` baseada nas regras da ANAC.

3. **Testes e otimizações**
   - Testes realizados no **Remix IDE**.
   - Ajustes na lógica de categorização para evitar erros.

4. **Criação da documentação**
   - O README foi escrito manualmente, com estrutura baseada nas respostas da IA, mas adaptado ao estilo pessoal.

### **Consultas e prompts utilizados**
Durante o processo, foram feitas algumas perguntas à IA para aprimorar o desenvolvimento, incluindo:

- **"Como restringir uma função apenas ao dono do contrato em Solidity?"**
- **"Como armazenar e recuperar variáveis de estado no Solidity?"**
- **"Quais as melhores práticas para contratos que lidam com idade?"**
- **"Qual a diferença entre `public` e `private` em Solidity?"**
- **"Transforme esse README em Markdown?"**

Essas perguntas ajudaram a entender melhor a estrutura do Solidity e a validar as implementações feitas manualmente.

---

## 5. Meu Processo de Desenvolvimento

Preciso ser sincero, **programação não é o meu forte**, e Solidity é uma linguagem que eu nunca tinha trabalhado antes. A ideia de criar um **smart contract** para mim é algo extremamente difícil, e por isso eu decidi utilizar **inteligência artificial como ferramenta de suporte**.

Porém, eu não queria apenas **copiar e colar um código pronto** sem entender o que estava acontecendo. Então, segui um processo de aprendizado que me ajudou a realmente compreender a lógica por trás do contrato.

### **O que eu fiz para entender o contrato**
1. **Estudei a estrutura antes de começar**  
   - Li sobre a lógica de smart contracts e como Solidity funciona.  
   - Pesquisei sobre os modificadores de acesso (`onlyOwner`) e a melhor forma de armazenar dados.

2. **Usei IA para me ajudar, mas ajustei manualmente**  
   - A IA me ajudou a entender a sintaxe correta, mas conferi cada linha para garantir que fazia sentido.  
   - Modifiquei partes do código com base no que aprendi durante os testes.

3. **Testei cada função no Remix IDE**  
   - Fiz **múltiplos testes**, ajustando pequenos detalhes.  
   - Debuguei os erros sozinho antes de perguntar algo à IA.

4. **Escrevi esta documentação baseado no que aprendi**  
   - Em vez de gerar um README automático, organizei a estrutura com base no meu processo de aprendizado.

---

## 6. Estrutura do Repositório

Este repositório contém:
- 📄 **`anac.sol`** → Código do contrato.
- 📖 **`README.md`** → Documentação detalhada.
- 📸 **Capturas de tela** dos testes no Remix IDE.

---

## 7. Conclusão

O Smart Contract foi desenvolvido **compreendendo a lógica e usando a IA como ferramenta de suporte**, mas garantindo que as decisões fossem feitas manualmente para atender à atividade com um código otimizado e bem documentado.

---

## 8. Observação

**Este documento foi originalmente escrito por mim, mas pedi à IA para formatá-lo corretamente em Markdown para facilitar a organização do texto.** Todo o conteúdo foi revisado e ajustado manualmente para refletir meu processo real de desenvolvimento.

