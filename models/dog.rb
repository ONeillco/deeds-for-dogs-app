class Dog < ActiveRecord::Base 
has_many :deeds, dependant: :destroy

validates :name, presence: true
end