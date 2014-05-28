class Appointment < ActiveRecord::Base
  validates :customer, :pet, :reason, presence: true
end
