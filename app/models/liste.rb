class Liste < ActiveRecord::Base

  scope :depart, where(:quoi => 'depart')
  scope :filiere, where(:quoi => 'filiere')

end
