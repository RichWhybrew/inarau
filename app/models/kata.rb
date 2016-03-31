class Kata < ActiveRecord::Base
  belongs_to :user
  has_many :vocabs
end
