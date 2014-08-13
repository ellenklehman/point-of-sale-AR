require 'active_record'
require 'rspec'
require 'pry'

require 'cart'
require 'customer'
require 'cashier'
require 'product'
require 'purchase'

ActiveRecord::Base.establish_connection(YAML::load(File.open('./db/config.yml'))["test"])

RSpec.configure do |config|
  config.after(:each) do
    Cart.all.each { |task| task.destroy }
    Cashier.all.each { |task| task.destroy }
    Customer.all.each { |task| task.destroy }
    Product.all.each { |task| task.destroy }
    Purchase.all.each { |task| task.destroy }
  end
end
