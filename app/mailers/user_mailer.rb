class UserMailer < ApplicationMailer
    default from: 'Do-not-reply@yopmail.com'
   
    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user 
  
      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url  = 'http://monsite.fr/login' 
  
      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end

    def order_email(order)
      @order = order 
      @user = User.find(order.user_id)
      @cart = @user.cart
      @url = 'http://monsite.fr'
      puts "="*10
      puts @cart.items.first.avatar
      puts "="*10
      mail(to: @user.email, subject: 'Merci pour votre commande !')
    end
end
