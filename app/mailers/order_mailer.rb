class OrderMailer < ActionMailer::Base
  default from: "shop@edem-design.ru"

  def order(contacts, cart)
    @contacts = contacts
    @cart = cart
    delivery_options = { user_name: 'shop@shop.edem-design.ru', password: '860827', address: 'smtp.locum.ru' }
    #mail(to: 'land-edem@mail.ru', subject: 'Заказ SHOP.edem-design.ru')
    mail(to: 'nikulinaleksandr@gmail.com', subject: 'Заказ SHOP.edem-design.ru', delivery_method_options: delivery_options)
  end

end
