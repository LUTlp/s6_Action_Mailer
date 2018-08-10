class NewsletterMailer < ApplicationMailer

  def send

    email = { :from_email   => "diane-bunod-92@hotmail.fr",
            :from_name    => "Diane",
            :subject      => "Hello",
            :text_part    => "Hi, how are you ?",
            :recipients   => [{:email => "d.bunod@gmail.com"}] }

    test = Mailjet::Send.create(email)

    # retrieve the API response
    p test.attributes['Sent']

  end

end
