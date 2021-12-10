Before do
    @cadastro = CadastroUsuarioPage.new
    @common = CommonPage.new
    @autentica = AutenticaoPage.new
    @publica = PublicArticlePage.new
end

Before("@login") do
    user = CONFIG['user']['default']
    @autentica.go_to_signin
    @autentica.fill_signin_info(user['email'], user['password'])
    @common.click_action_button('Sign in')
end