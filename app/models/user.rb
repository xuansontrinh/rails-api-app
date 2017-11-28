class User < ActiveRecord::Base
  has_secure_password
  has_many :todos, foreign_key: :created_by

  validates_presence_of :name, :email, :password_digest
end
