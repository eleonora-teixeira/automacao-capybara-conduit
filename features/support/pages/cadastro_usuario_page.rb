require 'faker'

class CadastroUsuarioPage
    include Capybara::DSL

    def go_to_signup
        visit '/'
        find('a[href="#/register"]').click
    end

    def invalid_signup(username, email, senha)
        case username
        when 'valido'
            find('input[placeholder="Username"]').set Faker::Name.name
        when 'invalido'
            find('input[placeholder="Username"]').set 'Peter Parker'
        end

        case email
        when 'valido'
            find('input[placeholder="Email"]').set Faker::Internet.free_email
        when 'invalido'
            find('input[placeholder="Email"]').set 'peter.parker@mail.com'
        end

        case senha
        when 'valido'
            find('input[placeholder="Password"]').set Faker::Internet.password
        when 'invalido'
            find('input[placeholder="Password"]').set ''
        end
    end

    def signup_alert_message
        find('list-errors li').text
    end

    def valid_signup
        find('input[placeholder="Username"]').set Faker::Name.name
        find('input[placeholder="Email"]').set Faker::Internet.free_email
        find('input[placeholder="Password"]').set Faker::Internet.password
    end

end