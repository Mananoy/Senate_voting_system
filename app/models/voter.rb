class Voter < ApplicationRecord
  validates_presence_of :Name
  validates_presence_of :Gender
  validates_presence_of :Title
  validates_presence_of :PhoneNumber
  validates_presence_of :CitizenNumber
  validates_presence_of :Address
  validates_presence_of :date_of_birth
end
