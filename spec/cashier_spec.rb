describe Cashier do
  it 'has many customers' do
    inventory1 = ProductInventory.create({})
    cashier = Cashier.create({:name =>'Job'})
    customer = Customer.create({:name => 'Bob'})
    customer2 = Customer.create({:name => 'Rob'})
    purchase1 = Purchase.create({:customer_id => customer.id, :cashier_id => cashier.id, :purchase_date => '20140810'})
    purchase2 = Purchase.create({:customer_id => customer.id, :cashier_id => cashier.id, :purchase_date => '20140812'})
    expect(cashier.customers.length).to eq 2
  end

  it 'has many customers' do
    inventory1 = ProductInventory.create({})
    cashier = Cashier.create({:name =>'Job'})
    customer = Customer.create({:name => 'Bob'})
    customer2 = Customer.create({:name => 'Rob'})
    purchase1 = Purchase.create({:customer_id => customer.id, :cashier_id => cashier.id, :purchase_date => '20140810'})
    purchase2 = Purchase.create({:customer_id => customer.id, :cashier_id => cashier.id, :purchase_date => '20140812'})
    expect(cashier.time_range('20140810', '20140811')).to eq 1
  end
end
