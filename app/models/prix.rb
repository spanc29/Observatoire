class Prix < ActiveRecord::Base
  has_many :listes

  scope :difficulte, where(:difficulte).any?
end
