require 'faker'

class AutenticaoPage
    include Capybara::DSL

    def go_to_signin
        visit '/'
        find('a[href="#/login"]').click
    end

    def fill_signin_info(email,pass)
        find('input[placeholder="Email"]').set email
        find('input[placeholder="Password"]').set pass
    end

    def valid_autentication
        find('input[placeholder="Email"]').set 'peter.parker@mail.com'
        find('input[placeholder="Password"]').set '123456'
    end
end