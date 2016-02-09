class OrderMailer < ActionMailer::Base
  default from: "shop@edem-design.ru"

  def order(contacts, cart)
    @contacts = contacts
    @cart = cart
    #mail(to: 'land-edem@mail.ru', subject: 'Заказ SHOP.edem-design.ru')
    mail(to: 'nikulinaleksandr@gmail.com', subject: 'Заказ SHOP.edem-design.ru')
  end

end
