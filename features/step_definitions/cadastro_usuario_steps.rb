Dado("que acesso a tela de cadastro do sistema") do
    @cadastro.go_to_signup
end

Quando("informo um {string}, um {string} e uma {string}") do |username, email, senha|
    @cadastro.invalid_signup(username, email, senha)
end

Quando("clico em {string}") do |button|
    @common.click_action_button(button)
end

Então("vejo erro {string}") do |error_message|
    expect(@common.alert_message).to eql error_message
end

Quando('preencho todos os campos de cadastro') do
    @cadastro.valid_signup
end

Então('sou redirecionado ao dashboard do sistema') do
    expect(@common.successed_signup).to eql true
end
