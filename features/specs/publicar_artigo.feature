#language: pt

Funcionalidade: Publicação de artigo
Como usuário do sistema
Quero acessar a área de criação de artigos
Para poder realizar a publicação de artigos

@login
Esquema do Cenário: Publicar artigos não preenchendo campos obrigatórios
    Dado que estou no dashboard do sistema
    Quando acesso página de  publicação de artigos
    Então preencho os campos <title>, <description> e <body>
    Quando clico em 'Publish Article'
    Então vejo erro <error_message>
    Exemplos:
        | title                             | description  | body        |      error_message         |
        |''                                 |'Lorem ipsum' |'Lorem ipsum'|"title can't be blank"      |
        |'Automação de testes com Capybara' |''            |'Lorem ipsum'|"description can't be blank"|
        |'Automação de testes com Capybara' |'Lorem ipsum' |''           |"body can't be blank"       |

@login
Cenário: Publicar artigo com sucesso
Dado que estou no dashboard do sistema
Quando acesso página de  publicação de artigos
Então preencho todos os campos obrigatórios
Quando clico em 'Publish Article'
Então vejo o artigo publicado


