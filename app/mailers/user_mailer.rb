class UserMailer < ApplicationMailer
    default from: 'notification@example.com'

    def created_article_mail
        @article = params[:article]
        @url = "http://localhost:3000/articles/#{@article.id}"
        mail(to: 'admin@example.com', subject: 'New article created')
    end
end
