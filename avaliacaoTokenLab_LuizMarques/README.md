# Desafio Técnico - TokenLab

Este é um projeto desenvolvido em Laravel, MySQL e React como parte do processo seletivo para a TokenLab. 

Esta apliação permite que o usuário possa cadastrar eventos e participar dos eventos cadastrados por ele ou por outros usuários.

## Iniciando a aplicação

### Passo 1: Instalar os pacotes

Execute os seguintes comandos na _raiz_ do projeto para ser feita a instalação das dependências:

```bash
npm install

composer install
```

### Passo 2: Criar a database

Renomeie o arquivo `.env.example` para `.env` e crie um banco de dados com o nome `tokenlab` no MySQL. Depois execute o 
comando abaixo para o artisan executar as migrations e criar as tabelas no banco:

```bash
php artisan migrate
```

### Passo 3: Executar a aplicação

Nesse passo serão necessárias duas janelas do terminal. Uma para executar a renderização do front-end e outra para rodar
o back-end da aplicação. Execute os comandos abaixo:

```bash
# No terminal que vai ficar rodando o frontend
npm run hot

# No terminal que vai ficar rodando o backend
php artisan serve
```

Depois basta acessar o endereço informado no terminal do backend para abrir a aplicação.
