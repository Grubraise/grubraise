class Restuarant < ActiveRecord::Base
  attr_accessible :email, :message, :owner_name, :phone_number, :reference, :restuarant_name, :website
end
