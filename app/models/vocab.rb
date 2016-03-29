class Vocab < ActiveRecord::Base
  belongs_to :language
  belongs_to :category
  belongs_to :kata
end
