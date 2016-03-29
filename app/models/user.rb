class User < ActiveRecord::Base
	has_many :belts
	has_many :scores
	has_many :akapens
	has_many :katas

  has_secure_password
end
