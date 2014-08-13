require 'spec_helper'

describe 'Cart' do
  it 'has many products' do
    cart = Cart.create({})
    product1 = Product.create({:name => 'bannana', :price=>2, :cart_id => cart.id})
    product2 = Product.create({:name => 'crackers', :price=>3, :cart_id => cart.id})
    expect(cart.products).to eq [product1, product2]
  end
  it 'totals many products' do
    cart = Cart.create({})
    product1 = Product.create({:name => 'bannana', :price=>2, :quantity =>2, :cart_id => cart.id})
    product2 = Product.create({:name => 'crackers', :price=>3, :quantity =>2, :cart_id => cart.id})
    expect(cart.cart_total).to eq 10
    expect(cart.cart_sum).to eq 10
  end
end
