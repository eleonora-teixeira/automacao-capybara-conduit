#language: pt

@register
Funcionalidade: Cadastro de Usuário
Como usuário do sistema
Quero realizar cadastro
Para ter acesso as funcionalidades do sistema


Esquema do Cenário: Cadastrar usuário preenchendo informações inválidas
	Dado que acesso a tela de cadastro do sistema
    Quando informo um <username>, um <email> e uma <password>
    E clico em 'Sign up'
    Então vejo erro <error_message>
    Exemplos:
        | username  | email     | password   |         error_message           |
        |'invalido' |'valido'   |'valido'    |'username has already been taken'|
        |'valido'   |'invalido' |'valido'    |'email has already been taken'   |
        |'valido'   |'invalido' |'invalido'  |"password can't be blank"        |

Cenário: Cadastrar usuário com Sucesso
Dado que acesso a tela de cadastro do sistema
Quando preencho todos os campos de cadastro
E clico em 'Sign up'
Então sou redirecionado ao dashboard do sistema


