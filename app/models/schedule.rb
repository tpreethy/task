class Schedule < ActiveRecord::Base
  validates :name, :reason, presence: true
end
