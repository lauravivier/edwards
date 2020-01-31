class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :campaigns
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :name, presence: true

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
