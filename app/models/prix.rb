class Prix < ActiveRecord::Base
  scope :diffic, where("difficulte IS NOT NULL")
end
