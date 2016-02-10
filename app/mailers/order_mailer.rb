class OrderMailer < ActionMailer::Base
  default from: "Интернет магазин Эдем <shop@edem-design.ru>"

  def order(contacts, cart)
    @contacts = contacts
    @cart = cart
    mail(to: 'nikulinaleksandr@gmail.com', subject: 'Заказ SHOP.edem-design.ru')
#    mail(to: 'nikulinaleksandr@gmail.com', subject: 'Заказ SHOP.edem-design.ru', delivery_method_options: delivery_options)
  end

end
