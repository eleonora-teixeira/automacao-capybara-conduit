#language: pt

Funcionalidade: Autenticação de usuário
Como usuário do sistema
Quero me autenticar
Para acessar meu perfil de usuário


Esquema do Cenário: Autenticar usuário preenchendo informações inválidas
	Dado que estou na tela de autenticação
    Quando informo um <email> e uma <password>
    E clico em 'Sign in'
    Então vejo erro <error_message>
    Exemplos:
        | email                 | password   |         error_message           |
        |'peter.parker@bol.com' |'123,'      |'email or password is invalid'   |
        |'peter.parker@mail.com'|'12345'     |'email or password is invalid'   |


Cenário: Autenticar usuário com Sucesso
Dado que estou na tela de autenticação
Quando preencho dados válidos de email e senha
E clico em 'Sign in'
Então sou redirecionado ao dashboard do sistema


