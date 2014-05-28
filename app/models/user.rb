class User < ActiveRecord::Base
  validates :name, presence: true,
            length: {maximum: 35}
end
