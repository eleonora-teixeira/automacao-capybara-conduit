class CommonPage
    include Capybara::DSL

    def click_action_button(button)
        click_button button
        sleep 3
    end

    def alert_message
        find('list-errors li').text
    end

    def successed_signup
        page.has_css?('a[href="#/editor/"]')
    end
end