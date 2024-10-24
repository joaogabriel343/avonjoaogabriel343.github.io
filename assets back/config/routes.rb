# config/routes.rb
Rails.application.routes.draw do
  # Define a rota para a página de checkout
  get 'checkout', to: 'orders#checkout'
end
# app/controllers/orders_controller.rb
class OrdersController < ApplicationController
  def checkout
    # Aqui você pode adicionar lógica para exibir os itens no carrinho e finalizar a compra
  end
end

