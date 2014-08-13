require 'spec_helper'

describe Customer do
  it 'has many purchases' do
    customer = Customer.create({:name => 'Bob'})
    purchase1 = Purchase.create({:customer_id => customer.id, :purchase_date => '20140810'})
    purchase2 = Purchase.create({:customer_id => customer.id, :purchase_date => '20140812'})
    customer.purchases.should eq [purchase1, purchase2]
  end

  it 'had many carts' do
    customer = Customer.create({:name => 'Bob'})
    cart = Cart.create({:cart_sum => 5})
    purchase1 = Purchase.create({:customer_id => customer.id, :cart_id => cart.id, :purchase_date => '20140810'})
    customer.carts.should eq [cart]
  end

  it 'had many products' do
    cart = Cart.create({})
    product1 = Product.create({:name => 'bannana', :price=>2, :cart_id => cart.id, :quantity => 2})
    product2 = Product.create({:name => 'crackers', :price=>3, :cart_id => cart.id})
    customer = Customer.create({:name => 'Bob'})
    purchase1 = Purchase.create({:customer_id => customer.id, :cart_id => cart.id, :purchase_date => '20140810'})
    customer.products.should eq [product1, product2]
  end
end
