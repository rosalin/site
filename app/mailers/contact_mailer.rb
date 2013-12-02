module Site
   class ContactMailer < ActionMailer::Base
     default :from => "mailer@neemo.com.br"
  
    def new_contact(contact)
      @contact = contact
      mail(:to => MAIL_TO, :subject => "Novo formulario de contato", :from => "mailer@neemo.com.br")
      #mail(:to => "sandro_presidente@yahoo.com.br", :subject => "Novo formulario de contato", :from => "comercial@neemo.com.br")
    end
  end
end
