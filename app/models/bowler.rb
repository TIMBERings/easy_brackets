class Bowler < ActiveRecord::Base
  has_many :entries
  has_and_belongs_to_many :brackets
end
