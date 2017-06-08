class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :username, :presence => true, :uniqueness => true

  has_many :likes
  has_many :videos
  has_many :comments
  has_many :liked_videos, :through => :likes, :source => :video
  
end
