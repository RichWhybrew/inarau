class User < ActiveRecord::Base
	has_many :belts
	has_many :scores
	has_many :akapens
	has_many :katas

  has_secure_password

  	validates :username, :email, :password, presence: true
  	validates :email, uniqueness: {case_sensitive: false}
  	validates :username, uniqueness: {case_sensitive: false}
end
