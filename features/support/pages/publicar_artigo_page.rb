require "date"

class PublicArticlePage
    include Capybara::DSL


    def go_to_new_article
        find('a[href="#/editor/"]').click
    end

    def invalid_article_publication(title, desc, body)
        find("input[ng-model='$ctrl.article.title']").set title
        find("input[ng-model='$ctrl.article.description']").set desc
        find("textarea[ng-model='$ctrl.article.body']").set body
    end

    def valid_article_publication
        @title = "Automação de testes com Capybara - #{DateTime.now}"
        find("input[ng-model='$ctrl.article.title']").set @title
        find("input[ng-model='$ctrl.article.description']").set 'Lorem ipsum'
        find("textarea[ng-model='$ctrl.article.body']").set 'Lorem ipsum'
    end

    def article_pulished
        page.has_text?(@title)
    end
end