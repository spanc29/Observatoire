class Liste < ActiveRecord::Base
  belongs_to :prix

  scope :depart, where(:quoi => 'depart')
  scope :filiere, where(:quoi => 'filiere')

end
