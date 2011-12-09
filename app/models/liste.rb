class Liste < ActiveRecord::Base
  default_scope :order => "content ASC"

  scope :depart, where(:quoi => 'depart')
  scope :filiere, where(:quoi => 'filiere')
  scope :rejet, where(:quoi => 'rejet')
end
