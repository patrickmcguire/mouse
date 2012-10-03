class Position < ActiveRecord::Base
  attr_accessible :sequence, :session_id, :x, :y
end
