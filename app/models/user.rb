class User < ActiveRecord::Base
  has_many :games
  has_many :clues, through: :games
  has_many :rounds, through: :games
  has_many :players

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
