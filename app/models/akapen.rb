class Akapen < ActiveRecord::Base
  belongs_to :vocab
  belongs_to :user
end
