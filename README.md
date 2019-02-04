# Contact List

Gerencie sua agenda de contatos onde você quiser. Use o Contact List! Projeto criado com o objetivo de ensinar Ruby on Rails a programadores de outras linguagens no curso [Ruby on Rails 5 na prática](https://www.udemy.com/ruby-on-rails-5-na-pratica).

## Requisitos Necessários:

* Ruby 2.3.0 ou Superior
* PostgreSQL
* Rails 5

## Funcionalidades

- Cadastro de usuários
- Recuperação de senha via email
- Login de Usuário
- Gerenciamento de contatos pessoais
- Customização do perfil

## Para executar o projeto:

Antes de tudo, tenha certeza de instalar todos os requisitos necessários. [Siga os passos desse link para configurar](https://gist.github.com/brunojppb/338e08da867f4cb05a8de9d9523f0ffd)

### Clone em sua máquina

```sh
$ git clone git@github.com:brunojppb/rails_contact_list.git
```

### Instale as dependências
```sh
$ cd /rails_contact_list/
$ bundle install
```

### Configure o Banco de Dados
Copie o arquivo *config/database.exemple.yml* e cole na mesma pasta, renomeando para *database.yml*
e configure seu bando de dados(Por default, estamos usando PostgreSQL).
Realize a criação do banco e execute as migrações
```sh
$ rails db:create
$ rails db:migrate
```

### Execute a aplicação
```sh
$ rails s
```
