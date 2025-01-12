# TODORails

TODORails é uma aplicação desenvolvida em Ruby on Rails que permite aos usuários criar e gerenciar listas e itens dentro de um sistema intuitivo e organizado.

---

## Funcionalidades

- **Cadastro de usuários:** Permite que usuários se registrem e atualizem suas informações pessoais.
- **Gestão de listas:** Usuários podem criar e excluir listas personalizadas.
- **Gerenciamento de itens:** Cada lista pode conter itens, que podem ser adicionados ou removidos.
- **Filtro por status:** Filtrar itens de uma lista por status (“A Fazer”, “Em Progresso” ou “Concluídos”).
- **Controle de status:** Usuários podem atualizar o status dos itens diretamente na interface.

---

## Tecnologias Utilizadas

- **Ruby on Rails:** Framework principal para o desenvolvimento back-end.
- **Tailwind CSS:** Utilizado para a estilização responsiva e moderna da interface.
- **PostgreSQL:** Banco de dados utilizado para armazenar informações das listas e itens.
- **Font Awesome:** Para ícones dinâmicos e visualmente atrativos.

---

## Conheça o projeto!

[Clique aqui para acessar o projeto](https://mysite-e806.onrender.com)

---

## Como Executar o Projeto Localmente

### Pré-requisitos

- **Ruby** (versão 3.0 ou superior)
- **Rails** (versão 6.1 ou superior)
- **PostgreSQL**
- **Bundler** (para instalação de dependências do projeto)

---

### Passos para rodar o projeto localmente

1. **Clone o repositório:**

   ```bash
   git clone https://github.com/seu-usuario/seu-projeto.git
   ```

2. **Instale as dependências:**

   ```bash
   cd seu-projeto
   bundle install
   ```

3. **Configure o banco de dados:**

   Crie um arquivo `.env` com as credenciais do banco de dados e outras variáveis de ambiente necessárias:

4. **Crie e migre o banco de dados:**

   ```bash
   rails db:create
   rails db:migrate
   ```

5. **Inicie o servidor:**

   ```bash
   rails server
   ```

6. **Acesse a aplicação:**

   Abra o navegador e acesse: [http://localhost:3000](http://localhost:3000).

---

## Licença

Este projeto é licenciado sob a [MIT License](https://opensource.org/licenses/MIT).

