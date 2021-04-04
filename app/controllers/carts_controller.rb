class CartController < applicationController
       before_action :authenticate_user!

       def update
              product = params[:cart][:product_id]
              quantity = params[:cart][:quantity]

              current_order.add_product(product, quantity)

              redirect_to root_path, notice: "Se añadió el producto al carrito correctamente"
       end

       def show
              @order = current_order
       end

       def pay_with_paypal
              order = current_order
              price = order.total

              response = EXPRESS_GATEWAY.setup_purchase(price, 
                     ip: request.remote_ip,
                     return_url: process_paypal_payment_cart_url,
                     cancel_return_url: root_path,
                     allow_quest_checkout: true,
                     currency: "USD"
              )

              payment_method = PaymentMethod.find_by(code: "PEC")
              Payment.create(
                     order_id: order,
                     payment_method_id: payment_method.id,
                     state: "processing",
                     token: response.token
              )
              redirect_to EXPRESS_GATEWAY.redirect_url_for(response.token)
       end

       def process_paypal_payment

       end



end