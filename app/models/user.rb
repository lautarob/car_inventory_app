class User < ApplicationRecord
  enum role: { guest: 0, user: 1, admin: 2 }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
