# Preview all emails at http://localhost:3000/rails/mailers/newsletter_mailer
class NewsletterMailerPreview < ActionMailer::Preview

  def subsrcribe
    NewsletterMailer.subscribe
  end 

end
