class Prix < ActiveRecord::Base
  validates :departement, :type_filiere, :montant, :neuf, :date, :dimension, :difficulte, :presence => true
  validates :montant, :dimension, :numericality => true
  validates :terms, :acceptance => true


  scope :diffic, where("difficulte IS NOT NULL")
  scope :depart_saisie, where("departement IS NOT NULL").order("departement ASC")
end
