Dado('que estou na tela de autenticação') do
    @autentica.go_to_signin
end

Quando('informo um {string} e uma {string}') do |email, senha|
    @autentica.fill_signin_info(email,senha)
end

Quando('preencho dados válidos de email e senha') do
    @autentica.valid_autentication
end