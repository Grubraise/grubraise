class Pto < ActiveRecord::Base
  attr_accessible :email, :name, :school
  validates_presence_of :name,  :message => "can not be blank"
  validates_presence_of :email,  :message => "can not be blank"
  validates_presence_of :school, :message => "can not be blank"
end
