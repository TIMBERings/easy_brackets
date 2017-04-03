class BracketGroup < ActiveRecord::Base
  belongs_to :event
  has_many :brackets
end
