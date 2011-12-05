class Prix < ActiveRecord::Base

  scope :difficulte, where(:difficulte).exists?
end
