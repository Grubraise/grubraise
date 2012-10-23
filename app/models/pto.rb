class Pto < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :school
  validates_presence_of :email, :name, :school
end
