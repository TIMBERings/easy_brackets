class Entry < ActiveRecord::Base
  belongs_to :bracket_group
  belongs_to :bowler
end
