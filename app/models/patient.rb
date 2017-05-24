class Patient < ActiveRecord::Base
  belongs_to :condition
end
