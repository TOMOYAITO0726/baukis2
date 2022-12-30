class Admin::Loginform
  include ActiveModel::Model
  
  attr_accessor :email, :password
end