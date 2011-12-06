class Prix < ActiveRecord::Base
  validates :departement,:type_filiere, :montant, :neuf, :date, :dimension, :difficulte, :presence => true
  validates :montant, :dimension, :numericality => true

  scope :diffic, where("difficulte IS NOT NULL")
end
