Dado('que estou no dashboard do sistema') do
    expect(@common.successed_signup).to eql true 
end

Quando('acesso página de  publicação de artigos') do
    @publica.go_to_new_article
end

Então('preencho os campos {string}, {string} e {string}') do |title, desc, body|
    @publica.invalid_article_publication(title, desc, body)
end

Então('preencho todos os campos obrigatórios') do
    @publica.valid_article_publication
end

Então('vejo o artigo publicado') do
    expect(@publica.article_pulished).to eql true
end