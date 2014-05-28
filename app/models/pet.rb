class Pet < ActiveRecord::Base
  validates :name, :breed, presence: true, length:{maximum:35 }
  validates :age, :weight, :dated, presence: true

end
