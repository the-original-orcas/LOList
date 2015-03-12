class SharedEvent < ActiveRecord::Base
  belongs_to :comedian
  belongs_to :event
end
