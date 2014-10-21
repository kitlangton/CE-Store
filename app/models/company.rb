class Company < ActiveRecord::Base
  paginates_per 12
  has_many :products
  has_many :users
end
