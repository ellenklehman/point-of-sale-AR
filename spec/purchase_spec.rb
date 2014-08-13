require 'spec_helper'

describe Purchase do
  it 'returns purchases on a given date range' do
    cart = Cart.create({})
    product1 = Product.create({:name => 'bannana', :price=>2, :cart_id => cart.id, :quantity => 2})
    product2 = Product.create({:name => 'crackers', :price=>3, :quantity => 1, :cart_id => cart.id})
    customer = Customer.create({:name => 'Bob'})
    customer2 = Customer.create({:name => 'Jane'})
    purchase1 = Purchase.create({:customer_id => customer.id, :cart_id => cart.id, :purchase_date => '20140810'})
    purchase2 = Purchase.create({:customer_id => customer2.id, :cart_id => cart.id, :purchase_date => '20140813'})
    purchase3 = Purchase.create({:customer_id => customer2.id, :cart_id => cart.id, :purchase_date => '20140813'})
    cart.cart_total
    expect(Purchase.time_range('20140810', '20140814')).to eq 21
    end
  end
