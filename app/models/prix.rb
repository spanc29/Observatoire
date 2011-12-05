class Prix < ActiveRecord::Base

  scope :difficulte, where(:difficulte).any?
end
